#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

dir="$HOME/.config/rofi"
rofi_command="rofi -theme $dir/themes/sidebar/three.rasi"

# Options
screen=""
area=""
window=""

# Variable passed to rofi
options="$screen\n$area\n$window"

chosen="$(echo -e "$options" | $rofi_command -p '' -dmenu -selected-row 1)"
case $chosen in
    $screen)
		$HOME/.scripts/shot-now 
    ;;
    $area)
		$HOME/.scripts/shot-seldraw
    ;;
    $window)
		$HOME/.scripts/shot-window
	;;
esac

