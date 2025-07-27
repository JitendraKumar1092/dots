#!/bin/bash

# Directory containing wallpapers
WALLPAPER_DIR="$HOME/Pictures/wallpaper"

# Select a random wallpaper from the directory
WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" \) | shuf -n 1)

# Set the wallpaper using swww
if [ -n "$WALLPAPER" ]; then
    echo "Setting wallpaper to: $WALLPAPER"
    swww img "$WALLPAPER" --transition-type grow --transition-duration 2
else
    echo "No wallpapers found in $WALLPAPER_DIR"
fi

