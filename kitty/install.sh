#!/usr/bin/env bash
# Installs the TokyoDay kitty colour scheme into ~/.config/kitty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/kitty/themes
mkdir -p "$dest"
[ -f "$dest/TokyoDay.conf" ] && cp "$dest/TokyoDay.conf" "$dest/TokyoDay.conf.bak"
cp "$dir/TokyoDay.conf" "$dest/"
echo "Done. Add to ~/.config/kitty/kitty.conf:  include themes/TokyoDay.conf"
echo "then reload kitty (Ctrl+Shift+F5)."
