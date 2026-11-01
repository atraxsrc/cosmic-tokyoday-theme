#!/usr/bin/env bash
# Installs the TokyoDay Alacritty colour scheme into ~/.config/alacritty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/alacritty/themes
mkdir -p "$dest"
[ -f "$dest/tokyoday.toml" ] && cp "$dest/tokyoday.toml" "$dest/tokyoday.toml.bak"
cp "$dir/tokyoday.toml" "$dest/"
echo "Done. Add to ~/.config/alacritty/alacritty.toml:"
echo '  [general]'
echo '  import = ["~/.config/alacritty/themes/tokyoday.toml"]'
