#
# ~/.zsh_profile
# contains aliases and variables which are environment-indipendent
#

alias sudo="sudo "
alias c="clear"
alias q="exit"
alias pg="ping 1.1.1.1"
alias pacrem="sudo pacman -Rcns"
alias trimall="sudo fstrim -va"
alias fetch="info='n os wm kern pkgs sh mem term col n' fet.sh"
alias merge='xrdb merge'
alias load="kill -USR1 $(pidof st)"
alias picom='killall picom && picom -b'
alias aria='aria2c -s16 -x16 --dir=/mnt/Mark-I/Atomic'

# exa
# details information about shortcut https://the.exa.website/docs/command-line-options
alias ls="exa"
alias lsa="exa -alh"
alias lst="exa -T --icons"
alias lsl="exa -lhTL=2 --icons"

# git
alias g="git"
alias ga="git add"
alias gc="git clone"
alias gst="git status"
alias gcmsg="git commit -m"

# lvim
alias vim="lvim"
alias vi="lvim"
alias v="lvim"

# LAMP
alias runserve="sudo systemctl start httpd mariadb"
alias stopserve="sudo systemctl stop httpd mariadb"
alias reserve="sudo systemctl restart httpd mariadb"

# BT
alias bt="sudo systemctl start bluetooth"
alias sbt="sudo systemctl stop bluetooth"
alias rbt="sudo systemctl restart bluetooth"

# Color toys
alias bloks="~/.color-toys/bloks"
alias colorbar="~/.color-toys/colorbar"
alias colortest="~/.color-toys/colortest"
alias colortest-slim="~/.color-toys/colortest-slim"
alias colorview="~/.color-toys/colorview"
alias panes="~/.color-toys/panes"
alias pipes0="~/.color-toys/pipes1"
alias pipes1="~/.color-toys/pipes2"
alias pipes1-slim="~/.color-toys/pipes2-slim"

# gpg key
export GPG_TTY=$(tty)

# android development
# export PATH="$PATH:opt/flutter/bin"
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
export ANDROID_HOME=$HOME/Android/Sdk

export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
# export REACT_EDITOR="nvim"

# Less Colors for Man Pages
export LESS='--quit-if-one-screen --ignore-case --status-column --LONG-PROMPT --RAW-CONTROL-CHARS --HILITE-UNREAD --tabs=4 --no-init --window=-4'
export LESS_TERMCAP_mb=$'\e[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\e[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\e[0m'           # end mode
export LESS_TERMCAP_se=$'\e[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\e[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\e[0m'           # end underline
export LESS_TERMCAP_us=$'\e[04;38;5;146m' # begin underline
