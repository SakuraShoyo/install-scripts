#!/bin/bash


mkdir -pv ~/Programs

if  [ ! -d ~/Programs/dotfiles ]; then 
  git clone https://github.com/frmiza/dotfiles ~/Programs/dotfiles
fi

OPTION=0

while true; do 

  MENU="
  1 - ST
  2 - Alacritty
  3 - Xfce4-terminal
  4 - Kitty
  5 - Other
  "
  echo "${MENU//[0-9]  /$'\n'}"
  read -p "Option: " OPTION
  
  if [ "$OPTION" -ge 1 ] && [ "$OPTION" -le 5 ]; then
    case "$OPTION" in 
      
      1)
        echo "Installing st terminal"
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
        echo "Installing alacritty terminal"
        sudo apt install alacritty -y
        ;;
      3)
        echo "Installing xfce4-terminal"
        sudo apt install xfce4-terminal -y
	;;
      4)
        echo "Installing kitty terminal"
        sudo apt install kitty
        ;;
      5)
        echo "Install another later..."
        ;;
      *)
        echo "Invalid Option"
        ;;
      esac
      break

  else
    echo "Invalid Option, try again"
  fi

done
