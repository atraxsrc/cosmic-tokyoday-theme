# Firefox - Cosmic Night

Firefox theme matching the COSMIC rice. Palette sampled directly from the
wallpaper, [`tokyoday-cosmic-astronaut-black.png`](../backgrounds/tokyoday-cosmic-astronaut-black.png)
(k-means over the image, then tuned until every text pair clears WCAG AA).

## Palette

| Hex       | Role                       | Source in the wallpaper |
|-----------|----------------------------|-------------------------|
| `#000000` | Frame, new tab             | Space background        |
| `#171b23` | Panels, active tab, menus  | Shadow tone             |
| `#0d0f16` | Toolbar                    | Lifted panel            |
| `#05060a` | URL bar field              | Deepest black           |
| `#79a3f7` | Borders, icons, selection  | Armor plating           |
| `#a8ec61` | Focus ring, active tab line| Visor strip             |
| `#e04c5d` | Loading, attention         | Under-suit red          |
| `#3a3946` | Separators                 | Mech detail grey        |
| `#7d8fae` | Muted text                 | Mid shadow              |
| `#c3d0f5` | Body text                  | -                       |

## Structure

```
firefox/
├── theme/            WebExtension theme source
│   ├── manifest.json     40 colour keys
│   └── icons/            32 / 48 / 64 / 96 / 128
├── chrome/           profile stylesheets
│   ├── userChrome.css    browser UI: rounded corners, menu borders
│   └── userContent.css   new tab page: accent colour only
└── install.sh        copies chrome/ into the default profile
```

## Setup

### Stylesheets

```bash
./install.sh
```

Copies `chrome/` into your `*.default-release` profile, backs up anything it
replaces, and adds two prefs to `user.js`: one so Firefox reads the
stylesheets, one so the accent (URL bar ring, buttons) comes from the theme
and not the desktop. Then **fully restart**
Firefox - `userChrome.css` is parsed only at startup.

To install into another profile (a test profile, say), pass its folder:

```bash
./install.sh ~/.mozilla/firefox/<profile>
```

Every rice's `install.sh` takes the same argument, so switching a test
profile between rices is one command plus a restart.

Manual equivalent:

1. `about:config` → `toolkit.legacyUserProfileCustomizations.stylesheets` = `true`
2. `about:support` → Profile Directory → Open Directory
3. Copy `chrome/` in
4. Restart

To undo: delete the two files and restart. The theme still works on its own.

### Theme

Install from AMO: **[Cosmic Night](https://addons.mozilla.org/en-US/firefox/addon/cosmic-night/)**.

To try local changes, build the package:

```bash
cd theme && zip -r -X ../cosmic-night.zip . -x '.*'
```

and load it via `about:debugging#/runtime/this-firefox` → Load Temporary
Add-on (gone on restart).

To release a new version, bump `version` in `theme/manifest.json`, build the
zip, and upload it on the [Developer Hub](https://addons.mozilla.org/developers/)
→ Cosmic Night → Upload a New Version → **On this site**. AMO refuses a
version number it has seen before.

## Notes

Things worth knowing before editing the CSS:

- **Never set `--panel-*` or `--arrowpanel-*` on `:root`.** Those variables are
  read across the whole chrome; overriding them globally leaks into the toolbar
  and blanks the URL bar. Scope them to the popup elements.
- **Popup borders need `::part(content)`.** Menus and panels render their shell
  in shadow DOM - a plain `border` on the element lands on the inner box, so
  you get two visible edges. This applies to context menus too.
- **No `@namespace` declaration.** Modern Firefox builds urlbar results and
  panel rows from HTML; defaulting to the XUL namespace silently stops those
  selectors from matching.
- **`userContent.css` sets colour variables only.** Adding `border` or
  `background` to `.tile` / `.search-inner-wrapper` stacks boxes and breaks
  the new tab layout.
- Built against **Firefox 154**. Panel internals move between releases; the
  Browser Toolbox (`Ctrl+Shift+Alt+I`, after enabling `devtools.chrome.enabled`)
  shows current element names.

## License

MIT, same as the rest of the repo.
