#!/bin/bash

OPTION=0

while true; do
  MENU="
  1 - Xfce4-panel
  2 - Polybar
  3 - Wawbar
  4 - Other
  " 
  echo "${MENU//[0-9]  /$'\n'}"
  read -p "Option: " OPTION
  
  if [ "$OPTION" -ge 1 ] && [ "$OPTION" -le 4 ]; then
  
    case "$OPTION" in
      1)
        echo "installiung xfce4-panel and plugins..."
        sudo apt install xfce4-panel \
                      	 xfce4-datetime-plugin \
                         xfce4-genmon-plugin \
                         xfce4-pulseaudio-plugin  -y
        ;;
      2)
        echo "installing polybar"
        rm -rvf ~/Programs/polybar
        sudo apt install polybar -y
        ;;
      3)
        echo "installing waybar"
        sudo apt install waybar -y
        ;;
      4)
        echo "Install another panel later/"
        ;;
      *)
        echo "Invalid Option"
      esac
      break 

  else
    echo "Invalid Option, try again"
  fi

done
