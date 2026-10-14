#!/usr/bin/env python3
"""Tokyo Day palette table for the README (stdout) with contrast ratios on stderr.
Exit 1 if a readable role is under 4.5:1 on the window background."""
import sys

WINDOW = "#E6E7ED"
PANE = "#D6D8DF"

# (role, hex, reads) where reads=True means a user reads it as text.
SURFACES = [
    ("Background", "Lavender grey", ["#E6E7ED"]),
    ("Containers", "Mist / Pane", ["#DEE0E6", "#D6D8DF"]),
    ("Terminal", "Pane, opaque", ["#D6D8DF"]),
]

# (role, name, hex, reads) where reads=True means a user reads it as text.
ROLES = [
    ("Text", "Ink", "#343B59", True),
    ("Accent", "Blue", "#2959AA", True),
    ("Success", "Green", "#33635C", True),
    ("Warning", "Yellow", "#8F5E15", True),
    ("Error", "Red", "#8C4351", True),
    ("Purple", "Violet", "#7B43BA", True),
    ("Cyan", "Teal", "#006C86", True),
    ("String", "Moss", "#385F0D", True),
    ("Number", "Umber", "#965027", True),
    ("Keyword", "Grape", "#65359D", True),
    ("Muted", "Slate", "#707280", False),
    ("Comment", "Grey", "#888B94", False),
    ("Faint", "btop inactive text", "#9DA0AB", False),
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
    print("| Role | Color | Hex |")
    print("|------|-------|-----|")
    for role, name, hexes in SURFACES:
        hx = " / ".join(f"`{h}`" for h in hexes)
        print(f"| {role} | {swatch(hexes[0])} {name} | {hx} |")
    for role, name, hexv, reads in ROLES:
        w, p = ratio(hexv, WINDOW), ratio(hexv, PANE)
        print(f"| {role} | {swatch(hexv)} {name} | `{hexv}` |")
        print(f"  {role}: {w:.1f}:1 on window, {p:.1f}:1 on pane", file=sys.stderr)
        if reads and w < 4.5:
            bad.append((role, w))
    for role, w in bad:
        print(f"FAIL {role} {w:.1f} < 4.5 on window", file=sys.stderr)
    return 1 if bad else 0


if __name__ == "__main__":
    sys.exit(main())
