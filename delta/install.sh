#!/usr/bin/env bash
# Installs the TokyoDay delta config into ~/.config/delta/. It does not edit
# ~/.gitconfig: add the [include] it prints.
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/delta
mkdir -p "$dest"
[ -f "$dest/tokyoday.gitconfig" ] && cp "$dest/tokyoday.gitconfig" "$dest/tokyoday.gitconfig.bak"
cp "$dir/tokyoday.gitconfig" "$dest/"
if [ -f ~/.gitconfig ] && grep -qF "delta/tokyoday.gitconfig" ~/.gitconfig; then
    echo "Done. ~/.gitconfig already includes it."
else
    echo "Done. Add to ~/.gitconfig:"
    echo "  [include]"
    echo "      path = ~/.config/delta/tokyoday.gitconfig"
fi
echo "Needs the bat TokyoDay theme for the code colours: ./bat/install.sh"
