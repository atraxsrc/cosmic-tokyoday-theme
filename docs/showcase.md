# Tokyo Day

> Lavender grey, ink and blue. The light half of Tokyo Night / Tokyo Day.

Pop!_OS 24.04 on the COSMIC desktop, one palette carried through the whole
machine: desktop, terminal, shell, editor, browser. This note is the rice
describing itself, written in Markdown and rendered by **Postilla**.

## Palette

Every text colour is checked against the window background `#E6E7ED`.

| Role | Hex | Contrast on background |
|------|-----|------------------------|
| Text | `#343B59` | 8.9:1 |
| Blue, accent | `#2959AA` | 5.5:1 |
| Green, success | `#33635C` | 5.5:1 |
| Yellow, warning | `#8F5E15` | 4.5:1 |
| Red, error | `#8C4351` | 5.6:1 |
| Purple | `#7B43BA` | 5.1:1 |
| Cyan, symlinks | `#006C86` | 4.9:1 |

Containers sit one step away from the background at `#DEE0E6`, which is
what frosted glass blurs into. The terminal is the exception: an opaque pane
at `#D6D8DF`, a step darker than the desktop.

## Where the colours go

```mermaid
flowchart LR
    P[Tokyo Day palette] --> D[COSMIC desktop<br/>TokyoDay.ron, Light slot]
    P --> T[COSMIC Terminal<br/>Tokyo Day]
    P --> S[zsh layer<br/>LS_COLORS, highlighting, starship]
    P --> E[Postilla<br/>syntax theme from the terminal scheme]
    T --> B[btop, bat, lsd, fastfetch]
    D --> F[Firefox<br/>Cosmic Tokyo Day + userChrome]
```

## Setup, in order

- [x] Import `cosmic/TokyoDay.ron` into Appearance, **Light** slot
- [x] Import `cosmic-term/TokyoDay-term.ron`, pick **Tokyo Day** for the profile
- [x] `./icons/install.sh` for the **Cosmic-TokyoDay** icons, `./cosmic/install.sh` for fonts and the terminal look
- [x] `./zsh/install.sh`, `./lsd/install.sh`, `./fastfetch/install.sh`
- [x] Cursor: Oxygen-TokyoDay-Blue
- [x] Wallpaper: `backgrounds/tokyoday-car.png`
- [x] Screenshot for the README

## The baseline every rice shares

```ron
corner_radii: (
    radius_xs: (2.0, 2.0, 2.0, 2.0),   // squared corners
    radius_xl: (2.0, 2.0, 2.0, 2.0),
),
frosted: Low,
frosted_windows: true,
frosted_panel: true,
frosted_applets: true,
frosted_maximized_apps: false,
gaps: (0, 7),
active_hint: 1,
```

Contrast is the WCAG ratio[^1], where $L$ is relative luminance:

```typst
$ (L_1 + 0.05) / (L_2 + 0.05) >= 4.5 $
```

---

*Rendered in Postilla, a Markdown notes app for COSMIC. The window is painted
with this rice's terminal scheme, imported as a syntax theme.*

[^1]: Web Content Accessibility Guidelines, success criterion 1.4.3. Normal text wants 4.5:1, large text 3:1.
