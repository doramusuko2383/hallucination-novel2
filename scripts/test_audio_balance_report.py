import subprocess
import tempfile
import unittest
from pathlib import Path
from types import SimpleNamespace
from unittest.mock import patch

from audio_balance_report import Usage, gain_db, measure, parse_usages, resolve_audio, risk


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

    @patch("audio_balance_report.subprocess.run")
    def test_measure_uses_utf8_and_accepts_missing_output_stream(self, run):
        run.return_value = SimpleNamespace(
            stderr="不正な文字: \ufffd\nmean_volume: -18.5 dB\nmax_volume: -1.2 dB\n",
            stdout=None,
        )

        self.assertEqual(measure(Path("効果音.ogg")), (-18.5, -1.2))
        kwargs = run.call_args.kwargs
        self.assertIs(kwargs["text"], True)
        self.assertEqual(kwargs["encoding"], "utf-8")
        self.assertEqual(kwargs["errors"], "replace")
        self.assertEqual(kwargs["stdout"], subprocess.PIPE)
        self.assertEqual(kwargs["stderr"], subprocess.PIPE)


if __name__ == "__main__":
    unittest.main()
