#!/usr/bin/env bash

# Current Theme
theme='grimshot'

active="Active window"
screen="All visible outputs"
output="Currently active output"
area="Select an area"
window="Select a window"

# Rofi CMD
rofi_cmd() {
	rofi -dmenu \
		-mesg "Screenshot" \
		-theme ${theme}.rasi
}

# Pass variables to rofi dmenu
run_rofi() {
	echo -e "$active\n$screen\n$output\n$area\n$window" | rofi_cmd
}

menu_option="$(run_rofi)"
if [[ ! -z "$menu_option" ]]
then
	sleep 1
	case $menu_option in 
		$active)
		grimshot save active - | swappy -f -
			;;
		$screen)
		grimshot save screen - | swappy -f -
			;;
		$output)
		grimshot save output - | swappy -f -
			;;
		$area)
		grimshot save area - | swappy -f -
			;;
		$window)
		grimshot save window - | swappy -f -
			;;
	esac
fi
