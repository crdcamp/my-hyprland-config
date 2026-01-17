#!/bin/bash

WALLPAPER_DIRECTORY=~/Pictures/Wallpapers
WALLPAPER=$(find "$WALLPAPER_DIRECTORY" -type f | shuf -n 1)

#hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper ",$WALLPAPER, fill"

sleep 1

#hyprctl hyprpaper unload unused

matugen image --config ~/.config/matugen/config.toml "$WALLPAPER"
