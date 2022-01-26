#!/usr/bin/env bash

case $1 in
now-playing)
	# For playback status on the panel
	if [[ $(playerctl -p spotify status) == *"laying"* ]]; then
		echo "$(playerctl -p spotify metadata -f '{{ artist }} - {{ title }}')"
	fi
	echo "Pause"
	;;
prev)
	bash -c playerctl -p spotify previous
	;;
toggle)
	bash -c playerctl -p spotify play-pause
	;;
stop)
	bash -c playerctl -p spotify stop && notify-send.sh -i "~$HOME/.icons/linebit/poweroff.png" -r 8888 "Music Player" "Stopped"
	;;
next)
	bash -c playerctl -p spotify next
	;;
esac
