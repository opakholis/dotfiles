#!/usr/bin/env bash

dir="$HOME/.config/rofi"
rofi_command="rofi -theme $dir/themes/sidebar/three.rasi"

# Options
emoji=""
launcher=""
calc=""

# Variable passed to rofi
options="$emoji\n$launcher\n$calc"

chosen="$(echo -e "$options" | $rofi_command -p '' -dmenu -selected-row 1)"
case $chosen in
    $emoji)
		rofi -show emoji -modi emoji -theme ~/.config/rofi/themes/emoji.rasi
    ;;
    $launcher)
		rofi -no-lazy-grab -show drun -modi drun -theme ~/.config/rofi/themes/launcher.rasi
    ;;
    $calc)
		rofi -show calc -modi calc -no-show-match -no-sort -theme ~/.config/rofi/themes/calc.rasi
    ;;
esac

