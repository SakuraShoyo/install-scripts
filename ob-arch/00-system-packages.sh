#!/bin/bash
set -e
mkdir -pv ~/Programs
git clone https://github.com/Shoyo-0kbps/dotfiles ~/Programs

MENU="
1 - openbox
2 - bspwm
3 - dwm
4 - both
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
    sudo pacman -S bspwm sxhkd
    ;;
  3)
    echo "install dwm"
    wget https://dl.suckless.org/dwm/dwm-6.2.tar.gz -P ~/Programs
    
    pushd ~/Programs
      tar xvf dwm-6.2.tar.gz 
      cd dwm*/
      cp ~/Programs/dotfiles/sucklesstools/DWM/* .
      make && sudo make clean install
    popd

  4)
    echo "install openbox and bspwm"
    sudo pacman -S openbox obconf bspwm sxhkd dmenu lightdm lightdm-gtk-greeter
    ;;
  *)
    echo "invalid value"
    exit 1
    ;;
  esac
  

wget https://dl.suckless.org/tools/dmenu-5.0.tar.gz -P ~/Programs    
pushd ~/Programs
    tar xvf dmenu-5.0.tar.gz 
    cd dmenu*/
    cp ~/Programs/dotfiles/sucklesstools/dmenu/* .
    make && sudo make clean install
popd

sudo pacman -S  --needed base-devel \
                curl \
                wget \
                xorg-server \
                xorg-xrandr \
                xorg-xinit \
                lxappearance \
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
                ueberzug \
                xdpyinfo \
                xcompmgr
