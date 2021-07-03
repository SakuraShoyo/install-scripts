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
    sudo apt install tint2
    ;;
  2)
    echo "install xfce4-panel and plugins..."
    sudo apt install xfce4-panel \
                     xfce4-datetime-plugin \
                     xfce4-genmon-plugin \
                     xfce4-pulseaudio-plugin \
    ;;
  3)
    echo "install dependencies..."
    sudo apt install build-essential cmake cmake-data pkg-config python3-sphinx python3-packaging libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-cursor-dev libpulse-dev &&
    git clone --recursive https://github.com/polybar/polybar && cp -r polybar $HOME/.config 
    cd $HOME/.config/polybar && 
    mkdir $HOME/.config/polybar/build && 
    cd $HOME/.config/polybar/build && cmake .. && make -j$(nproc) && sudo make install
    ;;
  *)
    echo "invalid value"
    exit 1
    ;;
  esac
