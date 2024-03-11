#!/bin/bash 

OPTION=0

while true; do

  MENU="
  1 - Firefox
  2 - Brave
  3 - Chromium
  4 - Other
  "
  echo "${MENU//[0-9]  /$'\n'}"
  read -p "Option: " OPTION

  if [ "$OPTION" -ge 1 ] && [ "$OPTION" -le 4 ]; then
    
    case "$OPTION" in
      
      1)
        echo "Install Firefox"
        sudo pacman -S firefox --noconfirm
        ;;
      2)
        echo "Install Brave"
        sudo yay -S brave-bin --noconfirm
        ;;
      3)
        echo "Installing Chromium"
        sudo pacman -S chromium --noconfirm
        ;;
      4)
        echo "Install it later"
        ;;
      *)
        echo "Invalid Option!"
      esac
      break 
  
  else
    echo "Invalid Option!, try again"
  fi 

done
