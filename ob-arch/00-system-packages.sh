#!/bin/bash

MENU="
1 - openbox
2 - i3
3 - both
"
echo $MENU
read -p "Option: " OPTION

case "$OPTION" in 
  1)
    echo "install openbox"
    sudo pacman -S openbox obconf
    ;;
  2)
    echo "install i3"
    sudo pacman -S i3-gaps
    ;;
  3)
    echo "install openbox and i3"
    sudo pacman -S openbox obconf i3-gaps lightdm lightdm-gtk-greeter
    ;;
  *)
    echo "invalid value"
    exit 1
    ;;
  esac
  
sudo pacman -S  --needed base-devel
                curl \
                xorg-server \
                xorg-xrandr
                lxappearance \
                rxvt-unicode \
                wmctrl \
                xdotool \
                nitrogen \
                rofi \
                pulseaudio \
                pulseaudio-utils \
                pavucontrol \
                ranger
