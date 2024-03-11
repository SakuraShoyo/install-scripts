#!/bin/bash

install-minimal-xorg(){
  echo "Installing minimal xorg server and deps"
  sudo pacman -S xorg-server \
    xorg-xrandr \
    xorg-xinit \
    wmctrl \
    xdotool \
    libx11 \
    xrandr \
    libxft \
    libxinerama \
    freetype2 \
    fontconfig \
    xdg-utils --nocofirm
}

install-sucklesstools(){
  rm -rvf ~/Programs/{dmenu*,dwm*}
  wget https://dl.suckless.org/tools/dmenu-5.2.tar.gz -P ~/Programs
  
  pushd ~/Programs
    tar xvf dmenu-*.tar.gz 
    cd dmenu*/
    cp -rv ~/Programs/dotfiles/sucklesstools/dmenu/* .
    make && sudo make clean install
  popd
  
  if [[ $1 == 1 ]]; then
    wget https://dl.suckless.org/dwm/dwm-6.4.tar.gz -P ~/Programs
    pushd ~/Programs
      tar xvf dwm-*.tar.gz
      cd dwm*/
      cp -rv ~/Programs/dotfiles/sucklesstools/DWM/* .
      make && sudo make clean install
    popd
  fi
}

if  [ ! -d ~/Programs/dotfiles ]; then 
  git clone https://github.com/frmiza/dotfiles ~/Programs/dotfiles
fi


OPTION=0

while true; do 
  
  MENU="
  1 - Bspw  
  2 - Dwm  
  3 - Hyprland  
  4 - Qtile  
  5 - Other  
  "
  echo "${MENU//[0-9]  /$'\n'}"
  read -p "Option: " OPTION

  if [ "$OPTION" -ge 1 ] && [ "$OPTION" -le 4 ]; then
    
    case "$OPTION" in 
      1)
        echo "Installing bspwm"
        sudo pacman -S bspwm sxhkd --noconfirm
        install-minimal-xorg
        install-sucklesstools
        ;;
      2)
        echo "Installing dwm"
        install-minimal-xorg
        install-sucklesstools 1
        ;;
      3)
        sudo pacman -S hyprland \
          swaybg \
          wofi \
          mako \
          xdg-desktop-portal-hyprland --noconfirm
        ;;
      4)
        echo "Installing qtile"
        install-minimal-xorg
        sudo pacman -S qtile python-dbus-next --noconfirm
        yay -S qtile-extras
        ;;

      5)
        echo "Install another graphic interface manually later"
        ;;
      *)
        echo "Invalid value"
        exit 1
        ;;
      esac 
      break
  else
    echo "Invalid Option, try again"
  fi
done
    

