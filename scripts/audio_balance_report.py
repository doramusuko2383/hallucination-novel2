#!/usr/bin/env python3
"""Create a loudness/usage report for TyranoScript BGM and sound effects."""

from __future__ import annotations

import argparse
import csv
import math
import re
import shutil
import subprocess
import sys
from dataclasses import dataclass
from pathlib import Path


TAG_RE = re.compile(r"\[(playbgm|playse)\s+([^]]+)]", re.IGNORECASE)
ATTR_RE = re.compile(r'''([\w-]+)\s*=\s*(?:"([^"]*)"|'([^']*)'|([^\s\]]+))''')
MEAN_RE = re.compile(r"mean_volume:\s*(-?[\d.]+) dB")
MAX_RE = re.compile(r"max_volume:\s*(-?[\d.]+) dB")
@dataclass(frozen=True)
class Usage:
    scenario: str
    line: int
    kind: str
    storage: str
    volume: float


def parse_usages(scenario_dir: Path) -> list[Usage]:
    usages: list[Usage] = []
    for path in sorted(scenario_dir.glob("*.ks")):
        for line_number, line in enumerate(path.read_text(encoding="utf-8-sig").splitlines(), 1):
            if line.lstrip().startswith(";"):
                continue
            for match in TAG_RE.finditer(line):
                attrs = {
                    item.group(1).lower(): next(value for value in item.groups()[1:] if value is not None)
                    for item in ATTR_RE.finditer(match.group(2))
                }
                storage = attrs.get("storage")
                if not storage:
                    continue
                try:
                    volume = float(attrs.get("volume", "100"))
                except ValueError:
                    volume = 100.0
                usages.append(Usage(path.name, line_number, match.group(1).lower(), storage, volume))
    return usages


def resolve_audio(root: Path, usage: Usage) -> Path:
    storage = usage.storage.replace("\\", "/").lstrip("./")
    if usage.kind == "playbgm":
        return root / "data" / "bgm" / storage
    if storage.startswith("se/"):
        storage = storage[3:]
    return root / "data" / "sound" / "se" / storage


def measure(path: Path) -> tuple[float | None, float | None]:
    result = subprocess.run(
        ["ffmpeg", "-hide_banner", "-nostats", "-i", str(path), "-af", "volumedetect", "-f", "null", "-"],
        capture_output=True,
        text=True,
        check=False,
    )
    output = result.stderr + result.stdout
    mean = MEAN_RE.search(output)
    peak = MAX_RE.search(output)
    return (float(mean.group(1)) if mean else None, float(peak.group(1)) if peak else None)


def gain_db(volume: float) -> float:
    return -math.inf if volume <= 0 else 20 * math.log10(volume / 100)


def risk(effective_peak: float | None, effective_mean: float | None) -> str:
    if effective_peak is not None and effective_peak > -1:
        return "CLIP_RISK"
    if effective_mean is not None and effective_mean > -10:
        return "LOUD"
    if effective_mean is not None and effective_mean < -40:
        return "QUIET"
    return ""


def main() -> int:
    parser = argparse.ArgumentParser(description="BGM/SE の素材音量とシナリオ指定音量を一括点検します。")
    parser.add_argument("--root", type=Path, default=Path(__file__).resolve().parents[1])
    parser.add_argument("--output", type=Path, default=Path("audio-balance-report.csv"))
    args = parser.parse_args()
    root = args.root.resolve()
    output = args.output if args.output.is_absolute() else root / args.output

    if not shutil.which("ffmpeg"):
        print("error: ffmpeg が必要です。インストール後に再実行してください。", file=sys.stderr)
        return 2

    usages = parse_usages(root / "data" / "scenario")
    paths = {resolve_audio(root, usage) for usage in usages}
    measurements = {path: measure(path) for path in sorted(paths) if path.is_file()}

    rows = []
    for usage in usages:
        path = resolve_audio(root, usage)
        mean, peak = measurements.get(path, (None, None))
        adjustment = gain_db(usage.volume)
        effective_mean = mean + adjustment if mean is not None else None
        effective_peak = peak + adjustment if peak is not None else None
        rows.append({
            "scenario": usage.scenario,
            "line": usage.line,
            "type": "BGM" if usage.kind == "playbgm" else "SE",
            "storage": usage.storage,
            "volume": usage.volume,
            "source_mean_db": mean,
            "source_peak_db": peak,
            "effective_mean_db": round(effective_mean, 2) if effective_mean is not None else None,
            "effective_peak_db": round(effective_peak, 2) if effective_peak is not None else None,
            "flag": "MISSING" if not path.is_file() else risk(effective_peak, effective_mean),
        })

    output.parent.mkdir(parents=True, exist_ok=True)
    with output.open("w", encoding="utf-8-sig", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=list(rows[0]) if rows else ["scenario"])
        writer.writeheader()
        writer.writerows(rows)

    flagged = sum(bool(row["flag"]) for row in rows)
    print(f"{len(rows)} 箇所を解析し、{flagged} 箇所に確認フラグを付けました: {output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
