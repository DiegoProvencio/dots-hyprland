#!/bin/bash

choice=$(printf "WiFi\nBluetooth" | wofi --dmenu --prompt "Red")

case $choice in
    WiFi) kitty -e nmtui ;;
    Bluetooth) kitty -e bluetoothctl ;;
esac
