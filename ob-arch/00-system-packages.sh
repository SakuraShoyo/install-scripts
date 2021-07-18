#!/bin/bash

MENU="
1 - openbox
2 - bspwm
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
    sudo pacman -S bspwm sxhkd dmenu
    ;;
  3)
    echo "install openbox and bspwm"
    sudo pacman -S openbox obconf bspwm sxhkd dmenu lightdm lightdm-gtk-greeter
    ;;
  *)
    echo "invalid value"
    exit 1
    ;;
  esac
  
sudo pacman -S  --needed base-devel \
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
                pavucontrol \
                ranger \
                ueberzug \
                fish \
                pkgfile \
                inetutils 
