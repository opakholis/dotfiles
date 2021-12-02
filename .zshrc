# Path to your oh-my-zsh installation.
export ZSH="/home/opxop/.oh-my-zsh"

ZSH_THEME="typewritten"

# TypwWritten Customization
TYPEWRITTEN_SYMBOL="λ"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
  bgnotify
  fast-syntax-highlighting
  z.lua
  zsh-autosuggestions
  zsh-completions
  )

autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh

# global (valid for all machines) aliases
source ~/.zprofile

# History
HISTFILE="$HOME/.zhistory"     # Store history here
HISTSIZE=11000                 # Max. entries to keep in memory
SAVEHIST=10000                 # Max. entries to save to file

setopt APPEND_HISTORY          # Append to history, rather than overwriting
setopt INC_APPEND_HISTORY      # Write to the history file immediately, not when the shell exits.
setopt EXTENDED_HISTORY        # Write the history file in the ":start:elapsed;command" format.
setopt SHARE_HISTORY           # Share history between all sessions.
setopt NO_BANG_HIST            # Don't use ! for history expansion
setopt HIST_EXPIRE_DUPS_FIRST  # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS        # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS    # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS       # Do not display a line previously found.
setopt HIST_IGNORE_SPACE       # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS       # Don't write duplicate entries in the history file.
# setopt HIST_REDUCE_BLANKS     # Remove superfluous blanks before recording entry.
