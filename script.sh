#!/bin/sh

filepath=~/Wallpapers
wallpaper=$(find $filepath -type f | shuf -n 1)
wallpaper=$(printf "%s\n" "$wallpaper" | sed "s|^$HOME|~|")
hyprctl hyprpaper wallpaper "DVI-D-1, $wallpaper"
sed -i "s|~.*|$wallpaper|" ~/.config/hypr/hyprpaper.conf
