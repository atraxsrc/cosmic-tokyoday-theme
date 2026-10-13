# Tokyo Day zsh layer: colours, aliases, prompt.
#
# Source it at the END of your own ~/.zshrc, after oh-my-zsh.sh:
#   source /path/to/cosmic-tokyoday-theme/zsh/tokyoday.zsh
#
# Keep machine-specific or private lines (PATH, scaling, nvm, ...) in your
# own ~/.zshrc, not here.
#
#  pane:    #D6D8DF   fg:      #343B59   (terminal pane; window bg #E6E7ED)
#  blue:    #2959AA   green:   #33635C
#  yellow:  #8F5E15   red:     #8C4351
#  purple:  #7B43BA   cyan:    #006C86
#  muted:   #707280   comment: #888B94   string: #385F0D
#
# Light terminal: every colour here is dark enough to read on the pane.

# ── File colours (ls, lsd file names, completion menu) ─────────────────────────

export LS_COLORS="di=1;38;2;41;89;170:ln=3;38;2;0;108;134:ex=1;38;2;51;99;92:*.zip=4;38;2;143;94;21:*.tar=4;38;2;143;94;21:*.gz=4;38;2;143;94;21:*.xz=4;38;2;143;94;21:*.7z=4;38;2;143;94;21:*.deb=4;38;2;143;94;21:*.png=38;2;123;67;186:*.jpg=38;2;123;67;186:*.jpeg=38;2;123;67;186:*.webp=38;2;123;67;186:*.gif=38;2;123;67;186:*.mp4=3;38;2;123;67;186:*.mkv=3;38;2;123;67;186:*.rs=38;2;51;99;92:*.py=38;2;51;99;92:*.js=38;2;51;99;92:*.ts=38;2;51;99;92:*.sh=38;2;51;99;92:*.md=38;2;52;59;89:*.txt=38;2;52;59;89:or=9;38;2;140;67;81"

# oh-my-zsh reads LS_COLORS before this file loads, so refresh the menu colours
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# ── zsh-autosuggestions / zsh-syntax-highlighting ──────────────────────────────

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#9FA2AA'

typeset -gA ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=#2959AA'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#2959AA'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#2959AA'
ZSH_HIGHLIGHT_STYLES[function]='fg=#2959AA'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#2959AA'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#2959AA,underline'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#33635C,underline'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#343B59,bold'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#8C4351,bold,underline'
ZSH_HIGHLIGHT_STYLES[path]='fg=#2C324B,underline'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#8F5E15'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#8F5E15'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#707280'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#707280'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#385F0D'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#385F0D'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#385F0D'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#707280'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#707280'
ZSH_HIGHLIGHT_STYLES[comment]='fg=#888B94'

# ── Aliases (only when the tool is installed) ──────────────────────────────────

if (( $+commands[lsd] )); then
    alias ls='lsd'
    alias la='lsd -a'
    alias ll='lsd -l'
    alias lla='lsd -la'
fi

# Debian/Ubuntu ship bat as batcat
if (( $+commands[batcat] )); then
    alias cat='batcat'
elif (( $+commands[bat] )); then
    alias cat='bat'
fi

(( $+commands[cosmic-edit] )) && alias edit='cosmic-edit'

if (( $+commands[nvim] )); then
    alias vi='nvim'
    alias vim='nvim'
    alias v='nvim'
fi

# ── Prompt ─────────────────────────────────────────────────────────────────────

# needs ZSH_THEME="" in ~/.zshrc
(( $+commands[starship] )) && eval "$(starship init zsh)"
