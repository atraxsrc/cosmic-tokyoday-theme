#!/usr/bin/env bash
# Installs the TokyoDay lazygit colours beside your own config.yml
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/lazygit
mkdir -p "$dest"
[ -f "$dest/tokyoday.yml" ] && cp "$dest/tokyoday.yml" "$dest/tokyoday.yml.bak"
cp "$dir/tokyoday.yml" "$dest/"
echo "Done. zsh/tokyoday.zsh points LG_CONFIG_FILE at config.yml plus tokyoday.yml; without it:"
echo "  export LG_CONFIG_FILE=\"\$HOME/.config/lazygit/config.yml,\$HOME/.config/lazygit/tokyoday.yml\""
