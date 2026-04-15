#!/bin/bash
sleep 1
WALLPAPER_DIR="/home/yzp/Pictures/Wallpapers"

get_random_wallpaper() {
    mapfile -t WALLPAPERS < <(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) 2>/dev/null)
    if [ ${#WALLPAPERS[@]} -eq 0 ]; then
        return 1
    fi
    RANDOM_INDEX=$((RANDOM % ${#WALLPAPERS[@]}))
    echo "${WALLPAPERS[$RANDOM_INDEX]}"
}

while true; do
    WALLPAPER=$(get_random_wallpaper)
    if [ -n "$WALLPAPER" ]; then
        pkill -f "swaybg" 2>/dev/null
        swaybg -m fill -i "$WALLPAPER" &
    fi
    sleep 3600
done
