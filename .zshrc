# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="/home/opxop/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions zsh-completions zsh-peco-history z bgnotify fast-syntax-highlighting)

# for change color of zsh-autosuggestion
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"

source $ZSH/oh-my-zsh.sh

# User configuration
# To read the history file everytime history is called upon as well
# as the functionality from inc_append_history:

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


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
