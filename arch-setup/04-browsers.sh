#!/bin/bash 

MENU="
  1 - Firefox
  2 - Brave
  3 - Chromium
  4 - Other

"

echo $MENU

read -p "Option: " OPTION

case "$OPTION" in 
  1)
    echo "install Firefox"
    yes | sudo pacman -S firefox
    ;;
  2)
    echo "install Brave"
    mkdir -pv ~/Programs
    git clone https://aur.archlinux.org/brave-bin.git ~/Programs/brave
    cd ~/Programs/brave-bin
    makepkg -si
    ;;
  3)
    yes | sudo pacman -S chromium
    ;;
  *)
    echo "not avaliable"
    exit 1
    ;;
  esac
