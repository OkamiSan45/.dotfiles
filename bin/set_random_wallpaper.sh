#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/Wallpapers"
WALLPAPERS=("$WALLPAPER_DIR"/*)
RANDOM_WALLPAPER="${WALLPAPERS[RANDOM % ${#WALLPAPERS[@]}]}"

# Using feh
feh --bg-scale "$RANDOM_WALLPAPER"

# Uncomment below if using nitrogen
# nitrogen --set-zoom-fill "$RANDOM_WALLPAPER" --save

