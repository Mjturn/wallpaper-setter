#!/bin/sh

filepath=~/Wallpapers
wallpaper=$(find $filepath -type f | shuf -n 1)

if [ "$1" = "random" ]; then
    hyprctl hyprpaper wallpaper "DVI-D-1, $wallpaper"
elif [ "$1" = "slideshow" ]; then
    while true; do
        wallpaper=$(find $filepath -type f | shuf -n 1)
        hyprctl hyprpaper wallpaper "DVI-D-1, $wallpaper"
        sleep 15
    done
fi
