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
plugins=(zsh-syntax-highlighting zsh-autosuggestions zsh-completions bgnotify)

# for change color of zsh-autosuggestion
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"

source $ZSH/oh-my-zsh.sh

# User configuration
# To read the history file everytime history is called upon as well
# as the functionality from inc_append_history:
setopt INC_APPEND_HISTORY

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# fucking cd illusion
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

alias _="sudo"
alias c="clear"
alias q="exit"
alias pg="ping 8.8.8.8"
alias ls='exa'
alias pacrem="sudo pacman -Rcns"
alias trimall="sudo fstrim -va"
alias nanosu="sudo nano"
alias nvimsu="sudo nvim"
alias fetch="info='n os wm kern pkgs sh mem term col n' fet.sh"
alias merge='xrdb merge ~/.Xresources'
alias rescom='killall picom && picom -b'

# aria2nc
alias aria="aria2c -s16 -x16"

# LAMP
alias runserve="sudo systemctl start httpd mariadb"
alias stopserve="sudo systemctl stop httpd mariadb"
alias reserve="sudo systemctl restart httpd mariadb"

# BT
alias bt="sudo systemctl start bluetooth"
alias sbt="sudo systemctl stop bluetooth"
alias rebt="sudo systemctl restart bluetooth"

# Color toys
alias bloks="~/.color-toys/bloks"
alias colorbar="~/.color-toys/colorbar"
alias colortest="~/.color-toys/colortest"
alias colortest-slim="~/.color-toys/colortest-slim"
alias colorview="~/.color-toys/colorview"
alias panes="~/.color-toys/panes"
alias pipes1="~/.color-toys/pipes1"
alias pipes2="~/.color-toys/pipes2"
alias pipes2-slim="~/.color-toys/pipes2-slim"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# fnm
export PATH=/home/opxop/.fnm:$PATH
eval "`fnm env`"

# yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# gpg key
export GPG_TTY=$(tty)

# android development
export PATH="$PATH:opt/flutter/bin"
