#!/usr/bin/env bash
# Installs the TokyoDay WezTerm colour module into ~/.config/wezterm/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/wezterm
mkdir -p "$dest"
[ -f "$dest/tokyoday.lua" ] && cp "$dest/tokyoday.lua" "$dest/tokyoday.lua.bak"
cp "$dir/tokyoday.lua" "$dest/"
echo 'Done. Add to ~/.config/wezterm/wezterm.lua:  config.colors = require("tokyoday")'
