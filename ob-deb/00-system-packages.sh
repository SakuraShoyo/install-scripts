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
    sudo apt install openbox obconf obmenu
    ;;
  2)
    echo "install i3"
    sudo apt install i3
    ;;
  3)
    echo "install openbox and i3"
    sudo apt install openbox obconf obmenu i3-gaps lightdm lightdm-gtk-greeter
    ;;
  *)
    echo "invalid value"
    exit 1
    ;;
  esac

sudo apt install curl \
                 xorg \
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
