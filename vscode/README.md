# Cosmic Tokyo Night / Cosmic Tokyo Day for Cursor

Colour themes for [Cursor](https://cursor.com) from the COSMIC
[Tokyo Night](https://github.com/atraxsrc/cosmic-tokyonight-theme) rice and its light half
[Tokyo Day](https://github.com/atraxsrc/cosmic-tokyoday-theme): **Cosmic Tokyo Night** and **Cosmic Tokyo Day** in one
extension. It is a plain VS Code theme extension, so VS Code and VSCodium
take it too. The same folder ships in both repos.

## Install

```bash
./vscode/install.sh                # Cursor
./vscode/install.sh code codium    # VS Code / VSCodium instead
```

It packs this folder into `vscode/cosmic-tokyo-night-theme-<version>.vsix` and installs
that with the editor's CLI (`cursor --install-extension`), so the theme is
listed under Extensions and running the script again updates it. Then press
<kbd>Ctrl</kbd>+<kbd>K</kbd> <kbd>Ctrl</kbd>+<kbd>T</kbd> and pick **Cosmic Tokyo Night** or **Cosmic Tokyo Day**.

No CLI on the PATH (an AppImage, say): the script still builds the `.vsix`;
install it from Extensions → `...` → **Install from VSIX**.

## Follow COSMIC's Dark / Light toggle

COSMIC tells apps which mode is on through its desktop portal. With these
lines in Cursor's `settings.json` (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd> →
**Preferences: Open User Settings (JSON)**), Cursor switches between the two
themes along with the desktop:

```jsonc
"window.autoDetectColorScheme": true,
"workbench.preferredDarkColorTheme": "Cosmic Tokyo Night",
"workbench.preferredLightColorTheme": "Cosmic Tokyo Day"
```

## What it colours

Code is coloured the way Neovim is in the rice (`nvim/colors/*.lua`):

| Role | Tokyo Night | Tokyo Day |
|------|-------------|-----------|
| Keywords, tags | ![#BB9AF7](https://placehold.co/12x12/BB9AF7/BB9AF7.png) `#BB9AF7` | ![#65359D](https://placehold.co/12x12/65359D/65359D.png) `#65359D` |
| Functions, tag attributes | ![#7AA2F7](https://placehold.co/12x12/7AA2F7/7AA2F7.png) `#7AA2F7` | ![#2959AA](https://placehold.co/12x12/2959AA/2959AA.png) `#2959AA` |
| Strings | ![#9ECE6A](https://placehold.co/12x12/9ECE6A/9ECE6A.png) `#9ECE6A` | ![#385F0D](https://placehold.co/12x12/385F0D/385F0D.png) `#385F0D` |
| Numbers, constants | ![#FF9E64](https://placehold.co/12x12/FF9E64/FF9E64.png) `#FF9E64` | ![#965027](https://placehold.co/12x12/965027/965027.png) `#965027` |
| Types, classes, modules | ![#2AC3DE](https://placehold.co/12x12/2AC3DE/2AC3DE.png) `#2AC3DE` | ![#006C86](https://placehold.co/12x12/006C86/006C86.png) `#006C86` |
| Imports, macros, decorators, escapes, `this` / `self` | ![#7DCFFF](https://placehold.co/12x12/7DCFFF/7DCFFF.png) `#7DCFFF` | ![#965027](https://placehold.co/12x12/965027/965027.png) `#965027` |
| Parameters (italic) | ![#A9B1D6](https://placehold.co/12x12/A9B1D6/A9B1D6.png) `#A9B1D6` | ![#656773](https://placehold.co/12x12/656773/656773.png) `#656773` |
| Operators, punctuation | ![#89DDFF](https://placehold.co/12x12/89DDFF/89DDFF.png) `#89DDFF` | ![#656773](https://placehold.co/12x12/656773/656773.png) `#656773` |
| Comments (italic) | ![#5D658E](https://placehold.co/12x12/5D658E/5D658E.png) `#5D658E` | ![#81848D](https://placehold.co/12x12/81848D/81848D.png) `#81848D` |
| Accent | ![#7AA2F7](https://placehold.co/12x12/7AA2F7/7AA2F7.png) `#7AA2F7` | ![#2959AA](https://placehold.co/12x12/2959AA/2959AA.png) `#2959AA` |

The workbench takes the window colour of the rice's `cosmic/*.ron` for the
editor, side bars, panel, title and status bar, the container colours for
menus, hovers, inputs and the command palette, and the accent for the active
tab line, buttons, badges and the menu highlight. The integrated terminal uses
the rice's COSMIC Terminal scheme (`cosmic-term/`), so command output looks the
same as in COSMIC Terminal.

Cursor's own panels (Agent, chat, inline diffs) have no colour keys of their
own. Cursor builds them from standard ones, and the theme sets those: the
button colour is the agent's accent, the side bar and panel colours are its
surfaces, the diff colours are its accept / reject highlights, and the
terminal's `blue` slot colours its links.

## Contrast

Text is at least 4.5:1 on the window background and on menus and hovers,
comments and line numbers at least 3:1, checked with a script over the text
and background pairs the theme sets.
Where a Neovim colour falls short, it is darkened (light theme) or lightened
(dark theme) just far enough here:

- **Tokyo Night**: comments and line numbers `#565F89` → `#5D658E`; warnings and modified files `#E0AF68` → `#E0B06A`.
- **Tokyo Day**: comments and line numbers `#888B94` → `#81848D`; operators, parameters and secondary labels `#707280` → `#656773`; secondary text (status bar, titles, descriptions) `#656773` → `#5C5E69`; warnings and modified files `#8F5E15` → `#724B11`; added files and success marks `#33635C` → `#2F5B55`.

On the highlighted current line, code can dip slightly under 4.5:1 and
comments under 3:1.
