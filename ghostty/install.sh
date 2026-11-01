#!/usr/bin/env bash
# Installs the TokyoDay Ghostty theme into ~/.config/ghostty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/ghostty/themes
mkdir -p "$dest"
[ -f "$dest/TokyoDay" ] && cp "$dest/TokyoDay" "$dest/TokyoDay.bak"
cp "$dir/TokyoDay" "$dest/"
echo "Done. Add to ~/.config/ghostty/config:  theme = TokyoDay"
echo "(or  theme = dark:TokyoNight,light:TokyoDay  to follow COSMIC's toggle), then reload: Ctrl+Shift+,"
