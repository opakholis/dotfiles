export ZDOTDIR="$HOME/.config/zsh"

# TypwWritten Customization
TYPEWRITTEN_SYMBOL="»"
TYPEWRITTEN_DISABLE_RETURN_CODE=true

# some useful options (man zshoptions)
setopt autocd interactive_comments

# auto/tab complete
autoload -U compinit && compinit
zmodload zsh/complist
zstyle ':completion:*' menu select
# _comp_options+=(globdots) # include hidden files

# disable ctrl-s to freeze terminal.
stty stop undef

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

source "$ZDOTDIR/zsh-functions"

# normal files to source
zsh_add_file "zsh-exports"
zsh_add_file "zsh-aliases"
zsh_add_file "zsh-vim-mode"
zsh_add_file "zsh-notify"

# plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"
zsh_add_plugin "reobin/typewritten"
# For more plugins: https://github.com/unixorn/awesome-zsh-plugins
# More completions https://github.com/zsh-users/zsh-completions

# Key-bindings
bindkey -s '^f' 'zi^M'

bindkey '^[[P' delete-char
bindkey "^p" up-line-or-beginning-search   # Up
bindkey "^n" down-line-or-beginning-search # Down
bindkey "^k" up-line-or-beginning-search   # Up
bindkey "^j" down-line-or-beginning-search # Down

# fzf
export FZF_DEFAULT_OPTS='
  --color fg:#d9e0ee
  --color bg+:#f5e0dc,fg+:#6e6c7e,hl:#6e6c7e,hl+:#1e1e2e,gutter:#3a404c
  --color pointer:#6e6c7e,info:#f5c2e7
  --border
  --color border:#ddb6f2'

# fzf
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh

# tabtab source for packages (pnpm)
# [[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true

# [ -f "$ZDOTDIR"/completion/_bun ] && fpath+="$ZDOTDIR/completion/"
[ -f "$ZDOTDIR"/completion/_fnm ] && fpath+="$ZDOTDIR/completion/"
# [ -f "$ZDOTDIR"/completion/_pscale ] && fpath+="$ZDOTDIR/completion/"
# [ -f "$ZDOTDIR"/completion/_zoxide ] && fpath+="$ZDOTDIR/completion/"

eval "$(fnm env)"
eval "$(zoxide init zsh)"
