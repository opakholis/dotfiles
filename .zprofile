#
# ~/.zsh_profile
# contains aliases and variables which are environment-indipendent
#

alias c="clear"
alias q="exit"
alias cd="z"
alias pg="gping 1.1.1.1"
alias pacrem="sudo pacman -Rns"
alias pacupg="sudo pacman -Syyu"
alias pacrmorphans="sudo pacman -Qtdq | sudo pacman -Rns -"
alias update-fc="sudo fc-cache -fv"
alias trimall="sudo fstrim -va"
alias merge='xrdb merge'
alias load="kill -USR1 $(pidof st)"
alias picom='killall picom && picom -b'
alias aria='aria2c -s16 -x16 --dir=/mnt/Mark-I/Atomic'
alias fetch="info='n os wm kern pkgs sh mem term col n' fet.sh"
alias bench.sh='curl -Lso- bench.sh | bash'
alias reflector="sudo reflector --verbose --connection-timeout 2 --threads 10 --country Indonesia --latest 100 --age 24 --score 50 --sort rate --fastest 6 --save /etc/pacman.d/mirrorlist"

# exa
# [-l = long], [-h = header],
# [-T = tree], [-L = level]
# for details information https://the.exa.website/docs/command-line-options
alias ls="exa --icons"
alias lsl="exa -lh --icons"
alias lst="exa -TL=2 --icons"

# git
alias g="git"
alias ga="git add"
alias gc="git clone"
alias gst="git status"
alias gcmsg="git commit -m"

# vim
alias nvim=="lvim"
alias vim="lvim"
alias vi="lvim"
alias v="lvim"

alias yta-aac="yt-dlp --extract-audio --audio-format aac --audio-quality 0 "
alias yta-mp3="yt-dlp --extract-audio --audio-format mp3 --embed-thumbnail --audio-quality 0 "
alias ytv-best='yt-dlp -f '\''bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio'\'' --merge-output-format mp4 '
alias ytv-hd='yt-dlp -f '\''bestvideo[ext=mp4][height<=1080][fps<=?30][vcodec!=?vp9]+bestaudio/bestvideo+bestaudio'\'' --merge-output-format mp4 '

# Translate
alias trans-id="trans :id -b"
alias trans-en="trans :en -b"

# LAMP
alias httpd-start="sudo systemctl start httpd mariadb"
alias httpd-stop="systemctl stop httpd mariadb"
alias httpd-status="systemctl status httpd mariadb"
alias httpd-restart="systemctl restart httpd mariadb"

# BT
alias bt="sudo systemctl start bluetooth"
alias bt-stop="systemctl stop bluetooth"
alias bt-status="systemctl status bluetooth"
alias bt-restart="systemctl restart bluetooth"

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
