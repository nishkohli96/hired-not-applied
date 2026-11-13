#!/usr/bin/env python3
# Synced from /shared by scripts/sync-shared.sh.
"""Flag AI-sounding, weak or pushy phrasing in outreach drafts.

Usage: python3 voice_check.py <file> [<file> ...]   (or pipe text on stdin)
Exit code 1 if any issue is found.
"""
import re
import sys

PHRASES = {
    "AI opener/closer": [
        r"hope (this|the) (message|email|note) finds you",
        r"hope you('| a)re (doing )?well",
        r"i trust (you are|you're|this finds)",
        r"\bi(?:'m| am) reaching out\b",
        r"\bi wanted to reach out\b",
        r"\bi am writing to (express|inquire)",
        r"\bi came across your profile\b",
        r"\bi stumbled (upon|across)\b",
        r"look forward to hearing from you",
        r"thank you for your time and consideration",
        r"please (do )?let me know if you have any questions",
        r"\bquick question\b",
        r"\bjust (checking|following) (in|up)\b",
        r"\bbumping this\b",
        r"\bcircling back\b",
        r"\btouching base\b",
    ],
    "AI vocabulary": [
        r"\bdelv(e|ing)\b", r"\bleverag(e|ing)\b", r"\bsynerg", r"\brobust\b",
        r"\bseamless(ly)?\b", r"\bcutting[- ]edge\b", r"\bgame[- ]changer\b",
        r"\bpassionate\b", r"\bthrilled\b", r"\bexcited to\b", r"\bresonat",
        r"\balign(s|ed)? with my values\b", r"\btestament\b", r"\btapestry\b",
        r"\blandscape\b", r"\brealm\b", r"\bfoster", r"\bdynamic\b",
        r"\binnovative\b", r"\bjourney\b", r"\bunlock", r"\belevate",
        r"\bempower", r"\bholistic\b", r"\bmyriad\b", r"\bplethora\b",
        r"\bpivotal\b", r"\binvaluable\b", r"\bkeen interest\b",
        r"\b(deeply|truly|genuinely|incredibly)\b",
    ],
    "Weak / hedging": [
        r"\bsorry to (bother|disturb)\b", r"\bi know you('| a)re (very )?busy\b",
        r"\bi was wondering if\b", r"\bif possible\b", r"\bjust wanted\b",
        r"\bno pressure\b", r"\bi was fortunate\b", r"\bhumbly\b",
    ],
    "Blunt / pushy": [
        r"^\s*open to a (quick |short )?\d*-?\s*min(ute)?s? (call|chat)\??\s*$",
        r"^\s*let'?s (talk|connect|chat)\.?\s*$",
        r"\bcall me\b", r"\basap\b", r"\burgent(ly)?\b",
        r"\bdid you (see|get) my (message|email)\b",
        r"\bi haven'?t heard back\b",
    ],
    "AI structure": [
        r"\bnot (just|only) [^.]{1,60}\b(but|it'?s)\b",
        r"\bhere'?s the thing\b",
        r"\bever wondered\b",
    ],
}

PUNCT = [
    ("Em dash (use comma/full stop)", re.compile("—")),
    ("Exclamation mark", re.compile(r"!")),
    ("Emoji", re.compile("[\U0001F300-\U0001FAFF☀-➿]")),
]


def check(text: str, label: str) -> int:
    hits = 0
    for n, line in enumerate(text.splitlines(), 1):
        low = line.lower()
        for cat, pats in PHRASES.items():
            for p in pats:
                m = re.search(p, low, re.MULTILINE)
                if m:
                    hits += 1
                    print(f"{label}:{n}: [{cat}] '{line[m.start():m.end()]}' -> {line.strip()[:90]}")
        for cat, rx in PUNCT:
            if rx.search(line):
                hits += 1
                print(f"{label}:{n}: [{cat}] -> {line.strip()[:90]}")
    return hits


def main() -> None:
    total = 0
    if len(sys.argv) > 1:
        for path in sys.argv[1:]:
            with open(path, encoding="utf-8") as f:
                total += check(f.read(), path)
    else:
        total += check(sys.stdin.read(), "stdin")
    print(f"{total} issue(s) found" if total else "Clean: no voice issues found")
    sys.exit(1 if total else 0)


if __name__ == "__main__":
    main()
