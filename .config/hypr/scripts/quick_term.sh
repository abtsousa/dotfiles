if [[ -n $(hyprctl -j workspaces|jq '.[].name | select(.=="special:term")') ]]; then
    hyprctl dispatch togglespecialworkspace term
    hyprctl dispatch focuswindow tiled
else
    hyprctl dispatch togglespecialworkspace term
    hyprctl dispatch exec [ workspace special:term ] kitty

fi
