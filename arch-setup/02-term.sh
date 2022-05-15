#!/bin/bash
mkdir -pv ~/Programs

if  [ ! -d ~/Programs/dotfiles ]; then 
  git clone https://github.com/Shoyo-0kbps/dotfiles ~/Programs/dotfiles
fi

MENU="
  1 - ST
  2 - Alacritty
  3 - Xfce4-terminal
  4 - Other
"
echo $MENU
read -p "Option: " OPTION

case "$OPTION" in 
  1)
    echo "install st"
    wget https://dl.suckless.org/st/st-0.8.4.tar.gz -P ~/Programs
    rm -rvf ~/Programs/st*
    pushd ~/Programs
      tar xvf st-*.tar.gz 
      cd st*/
      cp -rv ~/Programs/dotfiles/sucklesstools/st/* .
      make && sudo make clean install
    popd
    ;;
  2)
    echo "install alacritty"
    sudo pacman -S alacritty --noconfirm
    ;;
  3)
    echo "install xfce4-terminal"
    sudo pacman -S xfce4-terminal --noconfirm
    ;;
  *)
    echo "invalid option"
    ;;
  esac
