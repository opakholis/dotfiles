# gpg key
export GPG_TTY=$(tty)

# android dev, espesially fro react native
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Default texteditor
export EDITOR=lvim
export VSCODE=code

# Manual
export MANPAGER="lvim +Man!"
export MANWIDTH=999

# Temporary files direcotry
export TMP="/tmp"

# Command history
HISTFILE="$HOME/.cache/.zhistory" # Store history here
HISTSIZE=11000                    # Max. entries to keep in memory
SAVEHIST=10000                    # Max. entries to save to file

setopt BANG_HIST              # Treat the '!' character specially during expansion.
setopt APPEND_HISTORY         # Append to history, rather than overwriting
setopt EXTENDED_HISTORY       # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY     # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY          # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS       # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS   # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS      # Do not display a line previously found.
setopt HIST_IGNORE_SPACE      # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS      # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS     # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY            # Don't execute immediately upon history expansion.

# Less Colors for Man Pages, use lvim instead
# export LESS='--quit-if-one-screen --ignore-case --status-column --LONG-PROMPT --RAW-CONTROL-CHARS --HILITE-UNREAD --tabs=4 --no-init --window=-4'
# export LESS_TERMCAP_mb=$'\e[01;31m'       # begin blinking
# export LESS_TERMCAP_md=$'\e[01;38;5;74m'  # begin bold
# export LESS_TERMCAP_me=$'\e[0m'           # end mode
# export LESS_TERMCAP_se=$'\e[0m'           # end standout-mode
# export LESS_TERMCAP_so=$'\e[38;5;246m'    # begin standout-mode - info box
# export LESS_TERMCAP_ue=$'\e[0m'           # end underline
# export LESS_TERMCAP_us=$'\e[04;38;5;146m' # begin underline
