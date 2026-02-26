#!/bin/sh

filepath=~/Wallpapers
wallpaper=$(find $filepath -type f | shuf -n 1)
hyprctl hyprpaper wallpaper "DVI-D-1, $wallpaper"
