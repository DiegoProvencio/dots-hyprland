#!/bin/bash
pkill -SIGUSR1 waybar

choice=$(~/dotfiles/rofi/.config/rofi/scripts/network-modi.sh | rofi \
    -dmenu \
    -p "" \
    -show-icons \
    -mesg "Esc para salir" \
    -theme ~/.config/rofi/network.rasi)

pkill -SIGUSR1 waybar

case "$choice" in
    WiFi) kitty -e nmtui ;;
    Bluetooth) kitty -e bluetoothctl ;;
esac
