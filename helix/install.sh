#!/usr/bin/env bash
# Installs the TokyoDay Helix theme into ~/.config/helix/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/helix/themes
mkdir -p "$dest"
[ -f "$dest/tokyoday.toml" ] && cp "$dest/tokyoday.toml" "$dest/tokyoday.toml.bak"
cp "$dir/tokyoday.toml" "$dest/"
echo 'Done. Add to ~/.config/helix/config.toml:  theme = "tokyoday"'
