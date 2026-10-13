# Tokyo Day: COSMIC light rice, sibling of cosmic-tokyonight-theme

Date: 2026-10-14. Status: draft for review.

## Goal

A light theme for Pop!_OS 24.04 on COSMIC that is the Light-slot half of
cosmic-tokyonight-theme, the way cosmic-dossier-theme is the light half of
cosmic-noir-theme. Importing TokyoNight.ron into the Dark slot and
TokyoDay.ron into the Light slot makes COSMIC's Dark / Light toggle flip the
desktop between the two. Shell, editor, browser, cursor and icons each get a
Day version installed by the same scripts the dark repo has.

Success: every component listed under Repo structure exists in the new repo
with Day colours, every text colour reads at 4.5:1 or better on the window
background, and the install scripts run on a machine that already has the
dark repo installed without touching its files.

## Source palette

Tokyo Night Light from the Tokyo Night VS Code theme
(tokyo-night/tokyo-night-vscode-theme, `themes/tokyo-night-light-color-theme.json`),
the same project the dark repo cites. Chosen over the tokyonight.nvim "day"
style because it shares the dark repo's lineage, defines a terminal ANSI set,
and its body text is already navy ink rather than blue, so no role needs
re-tinting for contrast. tokyonight.nvim day is an inversion of the night
palette; its blue text at 4.5:1 and red at 3.0:1 would have needed the kind of
surgery Dossier did on The Greek.

Values taken from the VS Code file: editor background `#E6E7ED`, editor
foreground `#343B59`, side bar / status bar / terminal background `#D6D8DF`,
line numbers `#9DA0AB`, comment `#888B94`, keyword `#65359D`, string
`#385F0D`, function `#2959AA`, number `#965027`, type `#006C86`, and the ANSI
set below. Every other hex in this spec is derived from those and the
derivation is stated where it appears.

## Palette

Contrast is the WCAG ratio on the window background `#E6E7ED`, with the ratio
on the terminal pane `#D6D8DF` in the last column.

| Role | Hex | On window | On pane |
|------|-----|-----------|---------|
| Window background | `#E6E7ED` | | |
| Primary container | `#DEE0E6` | | |
| Secondary container, terminal pane | `#D6D8DF` | | |
| Text, ink | `#343B59` | 8.9 | 7.7 |
| Accent, blue | `#2959AA` | 5.5 | 4.8 |
| Success, green | `#33635C` | 5.5 | 4.8 |
| Warning, yellow | `#8F5E15` | 4.5 | 3.9 |
| Error, red | `#8C4351` | 5.6 | 4.9 |
| Purple | `#7B43BA` | 5.1 | 4.4 |
| Cyan | `#006C86` | 4.9 | 4.2 |
| Muted, ANSI white | `#707280` | 3.9 | 3.3 |
| Comment | `#888B94` | 2.8 | 2.4 |
| String, nvim and zsh | `#385F0D` | 6.1 | 5.2 |
| Number, nvim | `#965027` | 4.9 | 4.2 |
| Keyword, nvim | `#65359D` | 6.7 | 5.8 |
| Line numbers, autosuggest | `#9DA0AB` | 2.1 | 1.8 |

Muted and comment sit under 4.5:1 on purpose, as in the dark repo, where
comment is 2.8:1 and muted 4.1:1. They are never used for text a user has to
read; they are for de-emphasis. Everything else a user reads is 4.5:1 or
better on the window background. On the pane, yellow, purple, cyan and number
land between 3.9 and 4.4; this is the same trade Dossier made with its darker
terminal and is documented in the README the same way.

Primary container `#DEE0E6` is the midpoint between the window background and
the pane, so COSMIC has its usual two container steps. The terminal pane is
the VS Code side bar colour and is opaque, carrying over the Dossier lesson
that the terminal reads better as a solid card a step darker than the desktop.

### Neutral ramp (COSMIC `neutral_0` to `neutral_10`)

Linear RGB interpolation from the primary container to the text colour, the
same shape Dossier uses (lightest surface at 0, text at 10):

`#DEE0E6 #CDD0D8 #BCBFCA #ABAEBC #9A9EAE #898EA0 #787D91 #676D83 #565C75 #454C67 #343B59`

`neutral_tint` is `neutral_5` `#898EA0`.

### Terminal ANSI

Normal is the VS Code set verbatim. The VS Code file repeats normal for
bright, which loses bold distinction, so bright is each normal colour darkened
15 percent toward black and dim is each normal colour blended 40 percent
toward the pane. This mirrors Dossier, where bright is deeper and dim lighter
so both still read on a light background.

| Slot | Normal | Bright | Dim |
|------|--------|--------|-----|
| black | `#343B58` | `#2C324B` | `#757A8E` |
| red | `#8C4351` | `#773945` | `#AA7F8A` |
| green | `#33635C` | `#2B544E` | `#749290` |
| yellow | `#8F5E15` | `#7A5012` | `#AB8F66` |
| blue | `#2959AA` | `#234C90` | `#6E8CBF` |
| magenta | `#7B43BA` | `#69399E` | `#9F7FC9` |
| cyan | `#006C86` | `#005C72` | `#5697AA` |
| white | `#707280` | `#5F616D` | `#999BA6` |

Foreground `#343B59`, background `#D6D8DF`, cursor `#2959AA`, bright
foreground `#2C324B`, dim foreground `#707280`.

### Highlight colour

The window hint, terminal cursor and btop highlight use the accent `#2959AA`,
matching the dark repo where the hint is the accent blue. Dossier switched its
hint to a neutral grey to follow its Omarchy source; Tokyo Day has no such
source and keeps the sibling's convention. It is one line in the ron to change.

## Repo structure

Identical to cosmic-tokyonight-theme and cosmic-dossier-theme, with
`TokyoNight` renamed `TokyoDay`, `tokyonight` renamed `tokyoday` and
`Tokyo Night` renamed `Tokyo Day` in file names, scheme names, script
variables and prose. No file is added or dropped relative to the dark repo
except `docs/superpowers/`, which holds this spec and the plan.

```
.
├── btop/TokyoDay.theme
├── cosmic/TokyoDay.ron                      Light slot
├── cosmic/config/com.system76.CosmicTerm/v1/   fonts, weights, opacity 100, no header bar, syntax_theme_light "Tokyo Day"
├── cosmic/config/com.system76.CosmicTk/v1/     fonts, icon_theme Cosmic-TokyoDay-Blue, button visibility, apply_theme_global
├── cosmic/install.sh
├── cosmic-term/TokyoDay-term.ron
├── cursors/Oxygen-TokyoDay-{Blue,Purple,Green,Ink}/, install.sh, uninstall.sh, README.md
├── icons/install.sh                         THEME="TokyoDay", VARIANTS=(Blue Purple Green Ink)
├── fastfetch/config.jsonc, cosmic.txt, install.sh
├── firefox/theme/manifest.json + icons/, chrome/userChrome.css, chrome/userContent.css, install.sh, README.md
├── lsd/colors.yaml, config.yaml, install.sh
├── nvim/colors/tokyoday.lua, lua/plugins/tokyoday.lua, syntax/ron.vim, install.sh
├── scripts/update_system.sh
├── zsh/tokyoday.zsh, install.sh
├── assets/screenshot.png, wallpaper.png, cursors/*.png
├── backgrounds/tokyoday-<subject>.png
├── docs/showcase.md
├── docs/superpowers/specs/, plans/
├── .gitignore, .pre-commit-config.yaml, LICENSE, README.md
```

## Component mapping

### COSMIC desktop, `cosmic/TokyoDay.ron`

`palette: Light((name: "Tokyo-Day", ...))`. Slots:

| Slot | Hex | Slot | Hex |
|------|-----|------|-----|
| bright_red | `#8C4351` | accent_blue | `#2959AA` |
| bright_green | `#33635C` | accent_indigo | `#65359D` |
| bright_orange | `#965027` | accent_purple | `#7B43BA` |
| gray_1 | `#DEE0E6` | accent_pink | `#8C4351` |
| gray_2 | `#D6D8DF` | accent_red | `#8C4351` |
| neutral_0..10 | ramp above | accent_orange | `#965027` |
| ext_warm_grey, accent_warm_grey | `#707280` | accent_yellow | `#8F5E15` |
| ext_orange | `#965027` | accent_green | `#33635C` |
| ext_yellow | `#8F5E15` | ext_blue | `#006C86` |
| ext_purple | `#7B43BA` | ext_pink | `#8C4351` |
| ext_indigo | `#65359D` | | |

Top-level: `bg_color #E6E7ED`, `primary_container_bg #DEE0E6`,
`secondary_container_bg #D6D8DF`, `text_tint #343B59`, `accent #2959AA`,
`success #33635C`, `warning #8F5E15`, `destructive #8C4351`,
`window_hint #2959AA`, `neutral_tint #898EA0`. Spacing, corner radii
(all 2.0), gaps `(0, 7)` and `active_hint 1` are the baseline every rice
shares, copied from the dark repo.

The ron carries the complete frosted glass block, every key present, so the
frosted inputs and the text tint are imported together:

```ron
text_tint: Some("#343B59FF"),
neutral_tint: Some("#898EA0FF"),
frosted: Low,
frosted_windows: true,
frosted_system_interface: true,
frosted_panel: true,
frosted_applets: true,
frosted_maximized_apps: false,
alpha_map: (
    extremely_low: 0.96, extremely_low_2: 0.93692,
    very_low: 0.91385, very_low_2: 0.89076,
    low: 0.86769, low_2: 0.84461,
    medium: 0.82154, medium_2: 0.79846,
    high: 0.77538, high_2: 0.75231,
    very_high: 0.72023, very_high_2: 0.70615,
    extremely_high: 0.68308, extremely_high_2: 0.66,
),
```

This matters because of a libcosmic bug the Dark Gold repo documents: moving
the frosted glass opacity or thickness sliders in Settings can reset
`text_tint` to `#FFFFFF`, which on a light theme makes every label
unreadable. The upstream fix is pop-os/libcosmic pull 1450, not merged. A
ron with the tint pinned and the frosted block spelled out is the workaround:
re-importing it restores the tint and the slider positions in one step. The
README's COSMIC desktop section carries the same "Known COSMIC bug" paragraph
the Dark Gold README has, pointing at `cosmic/TokyoDay.ron` as the file to
re-import when text turns white. No separate `-fixed-text` variant is
shipped; the main ron is the fixed one.

### COSMIC terminal

`cosmic-term/TokyoDay-term.ron` with the ANSI table above, imported into the
Light tab. `cosmic/config/.../syntax_theme_light` is `"Tokyo Day"` and
replaces the dark repo's `syntax_theme_dark` file. `opacity` is `100`. Fonts
and weights are the dark repo's values.

### btop, `btop/TokyoDay.theme`

`main_bg` empty (follows the pane), `main_fg` ink, `title` and the four box
outlines `#2C324B`, `hi_fg` and `proc_misc` blue, `selected_bg` blue with
`selected_fg #D6D8DF`, `inactive_fg #9DA0AB`, `div_line #888B94`. Meter
gradients green `#33635C` to blue `#2959AA` to red `#8C4351`; cached yellow,
available cyan, used red.

### fastfetch

Logo in ink `#343B59` (the Dossier lesson: big shapes in ink, colour for
small text). Keys blue `#2959AA`, box titles purple `#7B43BA`, box lines
`#A5A9B7` (ink blended 70 percent toward the pane), output text ink. The
palette dots line shows ink, blue, green, yellow, red, purple, cyan.

### zsh, `zsh/tokyoday.zsh`

`LS_COLORS`: directories bold blue, symlinks italic cyan, executables bold
green, archives yellow, images purple, documents ink, broken links red.
Autosuggest `#9FA2AA`. Syntax highlighting: commands, builtins, aliases,
functions blue; precommand green underline; reserved words ink bold; unknown
tokens red; paths `#2C324B` underline; globbing and history expansion yellow;
options and separators muted `#707280`; quoted arguments string green
`#385F0D`; comments `#888B94`. Aliases and the starship block are copied from
the dark repo. The repo-local part only; `install.sh` appends one `source`
line to `~/.zshrc` as the siblings do.

### lsd, `lsd/colors.yaml`

Nearest xterm-256 indices, since lsd 1.0.0 does not take hex: blue 25,
cyan 24, green 23, yellow 94, red 95, purple 97, muted 243, comment 245,
ink 238. Roles follow the Dossier file: user blue, group muted, read muted,
write yellow, exec red, octal and acl ink, dates blue / green / comment, sizes
comment / green / yellow / red, git new green, modified blue, deleted and
conflicted red, renamed ink.

### Neovim, `nvim/colors/tokyoday.lua`

Dependency-free colorscheme with the same highlight group list as the dark
repo's file. Palette: `bg #D6D8DF` (the pane), `bg1 #E6E7ED` (floats,
cursor line, status line), `bg2 #C5C7CD` (visual, separators), `fg #343B59`,
`muted #707280`, `dim #888B94`, `accent #2959AA`, `success #33635C`,
`warning #8F5E15`, `error #8C4351`, `kw #65359D`, `fn #2959AA`,
`str #385F0D`, `num #965027`, `typ #006C86`, `op #707280`, `cmt #888B94`,
`spec #965027`, `link #006C86`. `vim.o.background = "light"`. Terminal
colours 0 to 15 are the normal and bright ANSI sets. The LazyVim spec sets
`colorscheme = "tokyoday"` and the same parser list.

### Update script, `scripts/update_system.sh`

Same script, colour block replaced: EDGE ink `#2C324B` for section headers
and the logo rule, CONTROL blue, HIGH green, ACCENT yellow, MUTE muted,
HIGHER red, DIM comment. Banner gradient runs ink `#343B59` to blue
`#2959AA` across the 46 columns, following the Dossier change where the
banner is ink-first.

### Firefox

One theme add-on from the main palette, no separate sub-palette (the dark
repo's Cosmic Night was sampled from its astronaut wallpaper; Day has no such
wallpaper yet). Manifest name "Cosmic Tokyo Day", a new gecko id, version
1.0, icons regenerated in blue on `#E6E7ED`. Colour roles map as Dossier's
manifest does: frame and new tab `#E6E7ED`, toolbar and popups `#DEE0E6`,
URL field `#ECEDF2` (window background blended 25 percent toward white, the
field sits above the toolbar), text ink, inactive tab text muted, accent roles
(tab line, field focus, highlights, attention icons, loading) blue, icons
green `#33635C`, button hover `#C9CBD2`, popup border `#969AAA`, sidebar
border `#B1B3C1`, highlight text `#E6E7ED`. `userChrome.css` and
`userContent.css` are the Dossier files with the hex values substituted by
role. Publishing to addons.mozilla.org is a follow-up outside this repo's
scripts, as it was for the siblings.

### Cursors

Four Oxygen variants made with cosmic-darkgold-theme's `cursors/recolour.py`
from any coloured Tokyo Night variant as base: Blue `#2959AA` (default),
Purple `#7B43BA`, Green `#33635C`, Ink `#343B59`. Previews rendered on
`#E6E7ED`; contrast 5.5, 5.1, 5.5 and 8.9. `install.sh`, `uninstall.sh` and
the README are the dark repo's with names and the variant table replaced.

### Icons

A `TokyoDay` entry in cosmic-icon-themes `cosmic_icons/palettes.py`:
`bg #E6E7ED`, `text #343B59`, variants Blue `#2959AA`, Purple `#7B43BA`,
Green `#33635C`, Ink `{front #343B59, back #565C75, symbol #2959AA,
accent #2959AA}`, following the TokyoNight Dark variant's shape. Preview
added to that repo's README. `icons/install.sh` here sets `THEME="TokyoDay"`
and the four variants and works once a cosmic-icon-themes release carries the
packs. The icon-theme change is a separate commit in that repo and is part of
the implementation plan.

### Wallpapers

`backgrounds/` starts with the subjects the light rices share, rendered in
ink and blue on `#E6E7ED`. The recolours are manual GIMP work with a Tokyo Day
`.gpl` palette (the same process as the Dossier set); the palette file ships
in `backgrounds/tokyoday.gpl` so the renders can follow. The first commit may
ship with the palette and the stripes wallpaper only, and the README wallpaper
section says which subjects are present. `assets/wallpaper.png` and
`assets/screenshot.png` are taken on the finished desktop after install.

### Docs

`README.md` follows the dark repo section for section (Palette with contrast
column, Repo structure, COSMIC desktop with baseline settings, COSMIC terminal,
Firefox, Scripts, Terminal extras, Cursor, Icons and wallpaper, Setup, Stack,
Credits, License). Badges in Day colours. Credits name the Tokyo Night VS Code
theme for the palette, cosmic-tokyonight-theme as the dark half, and
cosmic-darkgold-theme for the shared baseline. `docs/showcase.md` is the
Postilla note with the Day contrast table and the setup checklist.

## Seeding and naming

The new repo is created fresh in `cosmic-tokyoday-theme/`, not cloned from the
dark repo: copy the dark repo's tree minus `.git`, `assets/`, `backgrounds/`
and the cursor binaries, apply the renames, replace the colour values per
component, then rebuild the cursors and previews. First commit "Tokyo Day:
COSMIC light rice, sibling of cosmic-tokyonight-theme", matching how Dossier
and White Gold began. Remote `https://github.com/atraxsrc/cosmic-tokyoday-theme.git`,
created on GitHub by the user before the push. Theme display names: COSMIC
palette `Tokyo-Day`, terminal scheme and syntax theme `Tokyo Day`, icon packs
`Cosmic-TokyoDay-<Variant>`, cursors `Oxygen-TokyoDay-<Variant>`, Firefox
"Cosmic Tokyo Day".

## Out of scope

- Publishing the Firefox add-on to addons.mozilla.org.
- Cutting the cosmic-icon-themes release that carries the Day packs (the
  palette entry and build are in scope; the GitHub release is the user's).
- The illustrated wallpaper recolours beyond the palette file and stripes.
- Screenshots. The README ships with placeholders named in the plan until the
  user retakes them.

## Verification

- A contrast script (the same WCAG function used to produce the tables here)
  checks every text role against `#E6E7ED` and `#D6D8DF`; the README table is
  generated from its output so the numbers cannot drift.
- `bash -n` on every script, `python3 -m json.tool` on the fastfetch config
  and the Firefox manifest, `nvim --headless` load of the colorscheme.
- A case-insensitive grep for `tokyonight` and `tokyo night` over the new
  repo returns only the intended references to the dark sibling in the README.
- The COSMIC ron and terminal scheme are imported by hand on the user's
  machine; the ron has no validator outside COSMIC Settings. A grep check
  confirms the ron contains `text_tint`, `neutral_tint`, `frosted:`, the five
  `frosted_*` flags and all fourteen `alpha_map` keys before it is committed.
- Icon pack: `python3 -m cosmic_icons.build --theme TokyoDay --variant Blue`
  and the repo's tests pass.
