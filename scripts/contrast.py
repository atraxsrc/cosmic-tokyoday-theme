#!/usr/bin/env python3
"""Tokyo Day palette contrast table. Exit 1 if a readable role is under 4.5:1 on the window."""
import sys

WINDOW = "#E6E7ED"
PANE = "#D6D8DF"

# (role, hex, reads) where reads=True means a user reads it as text.
SURFACES = [
    ("Window background", "#E6E7ED"),
    ("Primary container", "#DEE0E6"),
    ("Secondary container, terminal pane", "#D6D8DF"),
]

ROLES = [
    ("Text, ink", "#343B59", True),
    ("Accent, blue", "#2959AA", True),
    ("Success, green", "#33635C", True),
    ("Warning, yellow", "#8F5E15", True),
    ("Error, red", "#8C4351", True),
    ("Purple", "#7B43BA", True),
    ("Cyan", "#006C86", True),
    ("String", "#385F0D", True),
    ("Number", "#965027", True),
    ("Keyword", "#65359D", True),
    ("Muted", "#707280", False),
    ("Comment", "#888B94", False),
    ("Line numbers", "#9DA0AB", False),
]


def swatch(hexv):
    h = hexv.lstrip("#").lower()
    return f"![{hexv}](https://placehold.co/12x12/{h}/{h}.png)"


def lum(h):
    r, g, b = (int(h[i:i + 2], 16) / 255 for i in (1, 3, 5))
    f = lambda c: c / 12.92 if c <= 0.03928 else ((c + 0.055) / 1.055) ** 2.4
    return 0.2126 * f(r) + 0.7152 * f(g) + 0.0722 * f(b)


def ratio(a, b):
    la, lb = sorted((lum(a), lum(b)), reverse=True)
    return (la + 0.05) / (lb + 0.05)


def main():
    bad = []
    print("| Role | Color | Hex | On window | On pane |")
    print("|------|-------|-----|-----------|---------|")
    for role, hexv in SURFACES:
        print(f"| {role} | {swatch(hexv)} | `{hexv}` | | |")
    for role, hexv, reads in ROLES:
        w, p = ratio(hexv, WINDOW), ratio(hexv, PANE)
        print(f"| {role} | {swatch(hexv)} | `{hexv}` | {w:.1f} | {p:.1f} |")
        if reads and w < 4.5:
            bad.append((role, w))
    for role, w in bad:
        print(f"FAIL {role} {w:.1f} < 4.5 on window", file=sys.stderr)
    return 1 if bad else 0


if __name__ == "__main__":
    sys.exit(main())
