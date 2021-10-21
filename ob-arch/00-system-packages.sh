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
    echo "install bspwm"
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
                wget \
                xorg-server \
                xorg-xrandr \
                xorg-xinit \
                mesa \
                lxappearance \
                rxvt-unicode \
                wmctrl \
                xdotool \
                nitrogen \
                rofi \
                pulseaudio \
                pavucontrol \
                ranger \
                fish \
                pkgfile \
                inetutils \
                xdg-utils \
                ueberzug
