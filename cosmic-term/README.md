# COSMIC Terminal schemes

Colour schemes for COSMIC Terminal. The desktop `.ron` in `cosmic/` does not
colour ANSI text, so the terminal needs its own import.

1. COSMIC Terminal → **View → Color schemes…** (not Settings → Appearance)
2. **Light** tab → **Import** → a `.ron` from this folder
3. View → Settings → Appearance → Color scheme (light) → the scheme name

If a profile is set as default, set the scheme on that profile too or the
dropdown will look like it did nothing. `cosmic/install.sh` selects **Tokyo Day**,
so import that one at least.

Every scheme here keeps the 16 ANSI colours of Tokyo Day. Only the plain text
colour and the dim text change, so bat, lsd, starship, nala and btop look the
same whichever one you pick. The cursor stays blue ![#2959AA](https://placehold.co/12x12/2959aa/2959aa.png) `#2959AA`.

The ANSI slots follow the rice: `red` is red
![#8C4351](https://placehold.co/12x12/8c4351/8c4351.png) `#8C4351`; `green` is green
![#33635C](https://placehold.co/12x12/33635c/33635c.png) `#33635C`; `yellow` is
yellow ![#8F5E15](https://placehold.co/12x12/8f5e15/8f5e15.png) `#8F5E15`; `blue` is
blue, the accent ![#2959AA](https://placehold.co/12x12/2959aa/2959aa.png) `#2959AA`;
`magenta` is violet ![#7B43BA](https://placehold.co/12x12/7b43ba/7b43ba.png)
`#7B43BA`; `cyan` is teal ![#006C86](https://placehold.co/12x12/006c86/006c86.png)
`#006C86`; `white` is slate, the muted text
![#707280](https://placehold.co/12x12/707280/707280.png) `#707280`. Directories are
not affected: `LS_COLORS` in `zsh/tokyoday.zsh` colours them in truecolor.

## Which one

Ink ![#343B59](https://placehold.co/12x12/343b59/343b59.png) `#343B59` is the default. The others move through Tokyo Day's own greys
and tints: calmer above it, brighter below it, for whoever finds the default
glares at night or reads too dim by day.

| Scheme | Plain text | Contrast | Also used for |
|--------|------------|----------|---------------|
| Tokyo Day Slate | ![#5F616D](https://placehold.co/12x12/5f616d/5f616d.png) `#5F616D` | 4.3:1 | the bright `white` slot, a step darker than muted text |
| Tokyo Day Blue | ![#2959AA](https://placehold.co/12x12/2959aa/2959aa.png) `#2959AA` | 4.8:1 | the accent, the cursor and the `blue` slot |
| Tokyo Day Green | ![#33635C](https://placehold.co/12x12/33635c/33635c.png) `#33635C` | 4.8:1 | strings, success, the `green` slot |
| Tokyo Day Teal | ![#006C86](https://placehold.co/12x12/006c86/006c86.png) `#006C86` | 4.2:1 | the `cyan` slot |
| Tokyo Day Storm | ![#4F566F](https://placehold.co/12x12/4f566f/4f566f.png) `#4F566F` | 5.1:1 | a neutral a step from plain text |
| **Tokyo Day** (default) | ![#343B59](https://placehold.co/12x12/343b59/343b59.png) `#343B59` | 7.7:1 | the plain text colour of the rice |

When plain text shares a colour with an ANSI slot, output in that slot stops
standing out: the accent in Tokyo Day Blue, for example, looks like plain text.
Errors and numbers stand out more against the dimmer schemes than against
ink.

**Bold:** `bright_foreground` (![#2C324B](https://placehold.co/12x12/2c324b/2c324b.png) `#2C324B`) only colours bold text when
`use_bright_bold` is on. The baseline config in `cosmic/config/` leaves it off,
so bold text is the plain text colour at weight 800.

Previews are rendered in Fira Mono on the terminal background ![#D6D8DF](https://placehold.co/12x12/d6d8df/d6d8df.png) `#D6D8DF`, not
taken from the terminal. In COSMIC you get Maple Mono on the opaque pane, so only the font differs.

## Light

**Tokyo Day** · `TokyoDay-term.ron` · ink ![#343B59](https://placehold.co/12x12/343b59/343b59.png) `#343B59`, 7.7:1. The default.

![Tokyo Day](../assets/cosmic-term/TokyoDay-term.png)

**Tokyo Day Slate** · `TokyoDay-term-slate.ron` · ![#5F616D](https://placehold.co/12x12/5f616d/5f616d.png) `#5F616D`, 4.3:1. The bright `white` slot, a step darker than muted text.

![Tokyo Day Slate](../assets/cosmic-term/TokyoDay-term-slate.png)

**Tokyo Day Blue** · `TokyoDay-term-blue.ron` · ![#2959AA](https://placehold.co/12x12/2959aa/2959aa.png) `#2959AA`, 4.8:1. The accent, the cursor and the `blue` slot.

![Tokyo Day Blue](../assets/cosmic-term/TokyoDay-term-blue.png)

**Tokyo Day Green** · `TokyoDay-term-green.ron` · ![#33635C](https://placehold.co/12x12/33635c/33635c.png) `#33635C`, 4.8:1. Strings, success, the `green` slot.

![Tokyo Day Green](../assets/cosmic-term/TokyoDay-term-green.png)

**Tokyo Day Teal** · `TokyoDay-term-teal.ron` · ![#006C86](https://placehold.co/12x12/006c86/006c86.png) `#006C86`, 4.2:1. The `cyan` slot.

![Tokyo Day Teal](../assets/cosmic-term/TokyoDay-term-teal.png)

**Tokyo Day Storm** · `TokyoDay-term-storm.ron` · ![#4F566F](https://placehold.co/12x12/4f566f/4f566f.png) `#4F566F`, 5.1:1. A neutral a step from plain text.

![Tokyo Day Storm](../assets/cosmic-term/TokyoDay-term-storm.png)

Contrast is plain text on the terminal background, WCAG 2.
