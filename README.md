<div align="center">

# COSMIC · Tokyo Day

Pop!_OS 24.04 on COSMIC in Tokyo Day navy, blue and lime: desktop, terminal,
shell, editor, Firefox, cursor, wallpapers.

![Pop!_OS](https://img.shields.io/badge/Pop!_OS-24.04_LTS-48B9C7?style=for-the-badge&logo=popos&logoColor=white)
![COSMIC](https://img.shields.io/badge/COSMIC-1.0.0-ff6b35?style=for-the-badge)
![Tokyo Day](https://img.shields.io/badge/Theme-Tokyo_Night_Dark-7aa2f7?style=for-the-badge)
![Firefox](https://img.shields.io/badge/Firefox-Cosmic_Night-a8ec61?style=for-the-badge&logo=firefox-browser&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-9ece6a?style=for-the-badge)

</div>

---
![Pop!_OS COSMIC desktop with the Tokyo Day theme](assets/screenshot.png)

## Palette

Tokyo Day Dark, the low-contrast navy palette from the
[VS Code theme](https://github.com/tokyo-night/tokyo-night-vscode-theme) of the
same name. Contrast is measured on the window background `#1A1B26`.

| Role | Color | Hex | Contrast |
|------|-------|-----|----------|
| Background | ![#1a1b26](https://placehold.co/12x12/1a1b26/1a1b26.png) Dark navy | `#1A1B26` | |
| Containers | ![#24283b](https://placehold.co/12x12/24283b/24283b.png) Storm / Highlight | `#24283B` / `#292E42` | |
| Text | ![#c0caf5](https://placehold.co/12x12/c0caf5/c0caf5.png) Soft white | `#C0CAF5` | 10.6:1 |
| Accent | ![#7aa2f7](https://placehold.co/12x12/7aa2f7/7aa2f7.png) Blue | `#7AA2F7` | 6.8:1 |
| Cyan | ![#7dcfff](https://placehold.co/12x12/7dcfff/7dcfff.png) Sky | `#7DCFFF` | 10.0:1 |
| Purple | ![#bb9af7](https://placehold.co/12x12/bb9af7/bb9af7.png) Lavender | `#BB9AF7` | 7.4:1 |
| Success | ![#9ece6a](https://placehold.co/12x12/9ece6a/9ece6a.png) Green | `#9ECE6A` | 9.4:1 |
| Warning | ![#e0af68](https://placehold.co/12x12/e0af68/e0af68.png) Amber | `#E0AF68` | 8.5:1 |
| Orange | ![#ff9e64](https://placehold.co/12x12/ff9e64/ff9e64.png) Orange | `#FF9E64` | 8.4:1 |
| Error | ![#f7768e](https://placehold.co/12x12/f7768e/f7768e.png) Rose | `#F7768E` | 6.5:1 |
| Muted | ![#737aa2](https://placehold.co/12x12/737aa2/737aa2.png) Dark 5 | `#737AA2` | 4.1:1 |
| Comment | ![#565f89](https://placehold.co/12x12/565f89/565f89.png) Comment | `#565F89` | 2.8:1 |

Comments sit deliberately low, as in the original theme. Everything you read
as text is 6.5:1 or better.

### Cosmic Night (Firefox only)

Firefox gets its own palette, sampled from the astronaut wallpaper with
k-means and tuned until every text pair clears WCAG AA. It runs darker and
cooler than the rest of the rice.

| Role | Color | Hex |
|------|-------|-----|
| Background | ![#000000](https://placehold.co/12x12/000000/000000.png) True black | `#000000` |
| Panels | ![#171b23](https://placehold.co/12x12/171b23/171b23.png) Shadow | `#171B23` |
| Blue | ![#79a3f7](https://placehold.co/12x12/79a3f7/79a3f7.png) Armor | `#79A3F7` |
| Lime | ![#a8ec61](https://placehold.co/12x12/a8ec61/a8ec61.png) Visor | `#A8EC61` |
| Red | ![#e04c5d](https://placehold.co/12x12/e04c5d/e04c5d.png) Under-suit | `#E04C5D` |
| Grey | ![#3a3946](https://placehold.co/12x12/3a3946/3a3946.png) Mech detail | `#3A3946` |
| Foreground | ![#c3d0f5](https://placehold.co/12x12/c3d0f5/c3d0f5.png) Soft white | `#C3D0F5` |

---

## Repo Structure

```
.
├── assets
│   ├── cursors/                 # cursor previews
│   ├── screenshot.png           # README screenshot
│   └── wallpaper.png            # the astronaut on the bare desktop
├── backgrounds/                 # wallpapers, tokyoday-<subject>.png (see Icons and wallpaper)
├── btop
│   └── TokyoDay.theme         # btop colour theme
├── cosmic
│   ├── TokyoDay.ron           # COSMIC Appearance import (Dark)
│   ├── config/                  # baseline settings: fonts, icons, terminal look
│   └── install.sh
├── cosmic-term
│   └── TokyoDay-term.ron      # COSMIC Terminal colour scheme
├── cursors
│   ├── Oxygen-TokyoDay-*/      # cursor themes, one per icon colour, patched for COSMIC apps
│   ├── install.sh
│   ├── uninstall.sh
│   └── README.md
├── docs
│   └── showcase.md              # the rice describing itself, for the Postilla pane of the screenshot
├── icons
│   └── install.sh               # Cosmic-TokyoDay icon pack from cosmic-icon-themes
├── fastfetch
│   ├── config.jsonc             # blue / comment-grey fastfetch config
│   ├── cosmic.txt               # COSMIC logo, coloured by the config
│   └── install.sh
├── firefox                      # Cosmic Night browser theme
│   ├── theme
│   │   ├── manifest.json        # WebExtension theme, 40 colour keys
│   │   └── icons                # 32 / 48 / 64 / 96 / 128
│   ├── chrome
│   │   ├── userChrome.css       # browser UI: rounded corners, menu borders
│   │   └── userContent.css      # new tab page accent colour
│   ├── install.sh               # copies chrome/ into the default profile
│   └── README.md
├── lsd
│   ├── config.yaml              # theme: custom
│   ├── colors.yaml              # permission / size / date / git columns
│   └── install.sh
├── nvim                         # Neovim colorscheme, LazyVim spec, RON syntax, install.sh
├── scripts
│   └── update_system.sh         # nala + flatpak, Tokyo Day ANSI
├── zsh
│   ├── tokyoday.zsh           # LS_COLORS, highlighting colours, aliases, starship
│   └── install.sh
├── LICENSE
└── README.md
```

---

## COSMIC Desktop

Settings → Desktop → Appearance → **Dark** → **Import** → `cosmic/TokyoDay.ron`

The whole palette is Tokyo Day, in the same format as the DarkGold baseline:
background `#1A1B26`, containers `#24283B` / `#292E42`, navy neutrals from
`#3B4261` to `#C0CAF5` (so frosted glass tints navy, not grey), accent blue
`#7AA2F7`, success `#9ECE6A`, warning `#E0AF68`, error `#F7768E`. Text tint
is pinned to `#C7D1FD`, a touch brighter than Tokyo Day's `#C0CAF5` so it
stays crisp on the glass.

Frosted glass is on at `frosted: Low` with an opacity table of 0.66 to 0.96,
tinted with the palette's middle neutral `#545C7E`, the same glass as every
other rice. It covers windows, panel, applets and system UI (maximized apps
stay solid), and corners are squared (`radius_*: 2.0`), the same as the
DarkGold baseline.
Adjust it on Appearance → Style → Frosted glass after import; those sliders
survive a theme switch. Export from Appearance if you tweak it so you do not
lose the changes.

**Known COSMIC bug:** moving the frosted glass opacity / thickness sliders can
reset `text_tint` to `#FFFFFF`. If your text turns white, re-import
`cosmic/TokyoDay.ron`; it carries the tint. Upstream fix proposed in
[libcosmic#1450](https://github.com/pop-os/libcosmic/pull/1450), not merged.

### Baseline settings

`cosmic/config/` holds the settings that make up the look and rarely change
(panel, dock, applets and shortcuts are left out on purpose):

| Where | Setting |
|-------|---------|
| Fonts | Interface `Maple Normal UI`, monospace `Maple Mono Normal NFM` |
| Icons | Cosmic-TokyoDay-Blue |
| Windows | Minimize / maximize buttons hidden, theme applied to GNOME apps |
| Terminal | Maple Mono 15 (weights 500 / bold 800 / dim 300), 77% opacity, no header bar, Tokyo Day |

Install the [Maple fonts](https://github.com/subframe7536/maple-font) and the
Cosmic-TokyoDay icons (see Icons below) and import the terminal scheme first, then:

```bash
./cosmic/install.sh
```

It backs up each file it replaces to `*.bak` and COSMIC applies it live.

---

## COSMIC Terminal

The desktop `.ron` does not colour ANSI text.

1. COSMIC Terminal → **View → Color schemes…** (not Settings → Appearance)
2. Dark tab → **Import** → `cosmic-term/TokyoDay-term.ron`
3. View → Settings → Appearance → Color scheme (dark) → **Tokyo Day**

If a profile is set as default, set the scheme on that profile too or the
dropdown will look like it did nothing.

---

## Firefox

Two layers:

1. **Theme (colours):** install
   **[Cosmic Night on addons.mozilla.org](https://addons.mozilla.org/en-US/firefox/addon/cosmic-night/)**.
   This is the main look: a true-black theme whose palette comes from the
   astronaut wallpaper rather than from Tokyo Day (see the second table
   under Palette). Blue chrome, a lime focus accent, red for alerts.
2. **Stylesheets (optional):** `firefox/chrome/` adds rounded corners, menu
   borders and the new tab accent on top of the theme:

```bash
./firefox/install.sh
```

Fully restart Firefox afterward: `userChrome.css` is only parsed at startup.

Full details and CSS gotchas in [`firefox/README.md`](firefox/README.md).

---

## Scripts

### `update_system.sh`

nala + flatpak updater with Tokyo Day coloured output: nala package updates
(apt fallback), Flatpak updates, a Snap function that is off by default
(uncomment `update_snap` in `main`), and a runtime timer.

```bash
chmod +x scripts/update_system.sh
./scripts/update_system.sh
```

Don't run the whole script with `sudo`: `flatpak update` would then only
update system-wide installs and skip your per-user Flatpaks.

---

## Terminal extras

Need a [Nerd Font](https://www.nerdfonts.com/) in the terminal for the icons
(Maple Mono NFM in the baseline above).

### zsh

`zsh/tokyoday.zsh` is the rice part of the shell only: `LS_COLORS` (also
used by lsd for file names and by the completion menu), Tokyo Day colours
for zsh-autosuggestions and zsh-syntax-highlighting, lsd / bat / nvim aliases
and the starship prompt. Your own `~/.zshrc` stays private and sources it.

Needs zsh + [oh-my-zsh](https://ohmyz.sh/). `install.sh` clones the two
plugins if missing and appends one `source` line to `~/.zshrc` (backup in
`~/.zshrc.bak`):

```bash
./zsh/install.sh
exec zsh
```

In `~/.zshrc` keep `ZSH_THEME=""` and
`plugins=(git sudo zsh-autosuggestions zsh-syntax-highlighting)`.

### lsd

File names are coloured by `LS_COLORS` from `zsh/tokyoday.zsh`;
`lsd/colors.yaml` colours the other columns with the 256-colour codes nearest
the palette (149 green, 111 blue, 179 yellow, 210 red, 141 purple,
60 comment). lsd 1.0.0 does not accept `#hex` there.

```bash
./lsd/install.sh
lsd -l
```

### fastfetch

COSMIC logo in Tokyo Day blue, Hardware / Software / Age boxes in comment
grey with purple titles, the same layout as every other rice. `install.sh`
backs up any existing `~/.config/fastfetch/config.jsonc` to
`config.jsonc.bak`.

```bash
./fastfetch/install.sh
fastfetch
```

### Neovim

`nvim/` carries the rice into Neovim: a dependency-free colorscheme built from
the palette (`nvim/colors/tokyoday.lua`), a LazyVim spec that selects it and
makes sure the treesitter parsers for the files in this repo are installed
(`nvim/lua/plugins/tokyoday.lua`), and a small RON syntax file so
`cosmic/*.ron` is coloured even before the parser exists. `:terminal` inside
Neovim uses the Tokyo Day scheme.

```bash
./nvim/install.sh
# restart nvim; LazyVim switches to the tokyoday colorscheme
```

Without LazyVim, copy `nvim/colors/tokyoday.lua` to `~/.config/nvim/colors/`
and run `:colorscheme tokyoday`.

### btop

`btop/TokyoDay.theme`: navy background, blue titles, green → yellow → red
meters.

```bash
mkdir -p ~/.config/btop/themes
cp btop/TokyoDay.theme ~/.config/btop/themes/
# btop → Esc → Options → Color theme → TokyoDay
```

---

## Cursor

**Oxygen** cursors recoloured to the icon colours, one per folder colour of the
Cosmic-TokyoDay icon pack: **Blue** (default), **Purple**, **Green**, **Dark**. Patched with the cursor
names COSMIC apps ask for. COSMIC has no cursor picker yet, so the script sets it:

```bash
./cursors/install.sh                      # Blue
./cursors/install.sh --variant Purple    # or another, see --list
reboot
```

Previews, what the script touches, how to undo it and how the colours are made:
[`cursors/README.md`](cursors/README.md).

---

## Icons and wallpaper

Icons: **Cosmic-TokyoDay**, the [Kanagawa icons](https://github.com/Fausto-Korpsvart/Kanagawa-GKT-Theme/tree/main/icons/Kanagawa)
by Fausto Korpsvart recolored to this palette in
[cosmic-icon-themes](https://github.com/atraxsrc/cosmic-icon-themes). Folders come in
four colors: **Blue** `#7AA2F7` (default), **Purple** `#BB9AF7`, **Green** `#9ECE6A` and **Dark** `#292E42` with blue symbols.

![Cosmic-TokyoDay folder colors](https://raw.githubusercontent.com/atraxsrc/cosmic-icon-themes/main/previews/Cosmic-TokyoDay.png)

```bash
./icons/install.sh                   # Blue folders
./icons/install.sh --variant Purple  # or Green, Dark
```

It downloads the pack from the latest cosmic-icon-themes release, checks its SHA256,
installs it to `~/.local/share/icons/` and sets it as the COSMIC icon theme.
Restart open apps afterwards (Files caches icons per window).
Add `--system` to install to `/usr/share/icons` instead, for every user and the
login screen (asks for sudo); `--user` is the default.

Wallpapers ship in [`backgrounds/`](backgrounds/), named `tokyoday-<subject>.png`:
the thirteen subjects every dark rice has, rendered in Tokyo Day blue and yellow:
the Harbor Dark reaper and Hyundai blueprint, the COSMIC astronaut, the samurai,
sushi switch, geisha, JS mug and neon street from the Tokyo Day set, The Greek
eagle and ink portrait, and three new scenes: city, panel and tower.
Plus the astronaut on black, `tokyoday-cosmic-astronaut-black.png`: the one in the
screenshot, and the image the Firefox palette was sampled from.
The subjects come from [HANCORE-linux](https://github.com/HANCORE-linux) (MIT) and
[cool-wallpapers](https://github.com/atraxsrc/cool-wallpapers); each was rendered again in this palette, then upscaled.
The big Tokyo Day set stays in cool-wallpapers, folder
[`tokyoday/`](https://github.com/atraxsrc/cool-wallpapers/tree/main/tokyoday).

Settings → Wallpaper → Add image → a file from `backgrounds/`.

![The astronaut wallpaper on the Tokyo Day desktop, panel only](assets/wallpaper.png)

---

## Setup

Prerequisites: [nala](https://gitlab.com/volian/nala) for the update script
and a recent fastfetch.

```bash
sudo apt install nala
sudo add-apt-repository ppa:zhangsongcui3371/fastfetch
sudo nala update && sudo nala install fastfetch
```

Then:

```bash
git clone https://github.com/atraxsrc/cosmic-tokyoday-theme.git
cd cosmic-tokyoday-theme

# desktop
# Settings → Appearance → Dark → Import cosmic/TokyoDay.ron

# terminal
# View → Color schemes → Import cosmic-term/TokyoDay-term.ron

# firefox stylesheets (optional)
./firefox/install.sh

# shell + terminal tools (see Terminal extras above)
./zsh/install.sh
./lsd/install.sh
./fastfetch/install.sh
./nvim/install.sh
mkdir -p ~/.config/btop/themes && cp btop/TokyoDay.theme ~/.config/btop/themes/

# wallpaper
# Settings → Wallpaper → Add image → a file from backgrounds/ (see Icons and wallpaper above)

./cursors/install.sh                # cursor, Blue (see Cursor above), then reboot
./icons/install.sh                  # icons (see Icons above)
# Maple fonts (https://github.com/subframe7536/maple-font), then
# fonts, icons, terminal look from cosmic/config/
./cosmic/install.sh
```

---

## Stack

| Tool | What it does |
|------|-------------|
| [Pop!_OS 24.04](https://pop.system76.com/) | Base OS by System76 |
| [COSMIC DE](https://system76.com/cosmic) | Desktop environment |
| [oh-my-zsh](https://ohmyz.sh/) | zsh framework + plugins |
| [lsd](https://github.com/lsd-rs/lsd) | `ls` with icons and colours |
| [fastfetch](https://github.com/fastfetch-cli/fastfetch) | System info |
| [btop](https://github.com/aristocratos/btop) | Resource monitor |
| [nala](https://gitlab.com/volian/nala) | Nicer apt frontend for the update script |
| [cosmic-icon-themes](https://github.com/atraxsrc/cosmic-icon-themes) | Icon pack (Cosmic-TokyoDay), recolored from [Kanagawa icons](https://github.com/Fausto-Korpsvart/Kanagawa-GKT-Theme/tree/main/icons/Kanagawa) |
| [Oxygen-Cursors](https://github.com/wo2ni/Oxygen-Cursors) | Cursor, recoloured to the icon colours |

## Credits

- Palette: [Tokyo Day](https://github.com/tokyo-night/tokyo-night-vscode-theme),
  the VS Code theme. This repo is a COSMIC port.
- Shared baseline (frosted glass, squared corners, fonts) from
  [cosmic-darkgold-theme](https://github.com/atraxsrc/cosmic-darkgold-theme).

## License

MIT. The cursor artwork keeps the terms of KDE's Oxygen project, see
[`cursors/README.md`](cursors/README.md).
