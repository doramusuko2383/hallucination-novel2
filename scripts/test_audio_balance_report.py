import tempfile
import unittest
from pathlib import Path

from audio_balance_report import Usage, gain_db, parse_usages, resolve_audio, risk


class AudioBalanceReportTest(unittest.TestCase):
    def test_parses_active_tags_and_defaults_volume(self):
        with tempfile.TemporaryDirectory() as directory:
            scenario = Path(directory)
            (scenario / "chapter.ks").write_text(
                ';[playse storage=se/ignored.ogg]\n'
                '[playbgm storage="music.ogg" volume=50]\n'
                '[playse storage=se/hit.ogg]\n',
                encoding="utf-8",
            )
            usages = parse_usages(scenario)

        self.assertEqual([usage.storage for usage in usages], ["music.ogg", "se/hit.ogg"])
        self.assertEqual([usage.volume for usage in usages], [50, 100])

    def test_resolves_tyrano_audio_directories(self):
        root = Path("/game")
        self.assertEqual(
            resolve_audio(root, Usage("x.ks", 1, "playbgm", "music.ogg", 50)),
            root / "data/bgm/music.ogg",
        )
        self.assertEqual(
            resolve_audio(root, Usage("x.ks", 2, "playse", "se/hit.ogg", 50)),
            root / "data/sound/se/hit.ogg",
        )

    def test_gain_and_flags(self):
        self.assertAlmostEqual(gain_db(50), -6.0206, places=3)
        self.assertEqual(risk(-0.5, -20), "CLIP_RISK")
        self.assertEqual(risk(-3, -9), "LOUD")
        self.assertEqual(risk(-20, -41), "QUIET")


if __name__ == "__main__":
    unittest.main()
