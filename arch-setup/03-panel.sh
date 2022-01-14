#!/bin/bash

MENU="
1 - tint2 
2 - xfce4-panel 
3 - polybar 
" 
echo $MENU

read -p "Option: " OPTION

case "$OPTION" in
  1)
    echo "install tint2..."
    yes | sudo pacman -S tint2
    ;;
  2)
    echo "install xfce4-panel and plugins..."
    yes | sudo pacman -S  xfce4-panel \
                          xfce4-datetime-plugin \
                          xfce4-genmon-plugin \
                          xfce4-pulseaudio-plugin \
    ;;
  3)
    echo "install dependencies..."
    git clone https://aur.archlinux.org/polybar.git ~/Programs/polybar
    cd ~/Programs/polybar && makepkg -si
    ;;
  *)
    echo "invalid value"
    exit 1
    ;;
  esac
