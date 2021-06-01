#
# ~/.zsh_profile
# contains aliases and variables which are environment-indipendent
#

alias _="sudo"
alias c="clear"
alias q="exit"
alias g="git"
alias pg="ping 8.8.8.8"
alias pacrem="sudo pacman -Rcns"
alias trimall="sudo fstrim -va"
alias fetch="info='n os wm kern pkgs sh mem term col n' fet.sh"
alias merge='xrdb merge'
alias load="kill -USR0 $(pidof st)"
alias picom='killall picom && picom -b'
alias aria='aria2c -s16 -x16 --dir=/mnt/Mark-I/Atomic'

# exa
# details information about shortcut https://the.exa.website/docs/command-line-options
alias ls="exa"
alias lsa="exa -alh"
alias lst="exa -lhTL=2 --icons"

# nvim
alias vim="nvim"
alias vi="nvim"
alias v="nvim"

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
export PATH="$PATH:opt/flutter/bin"

