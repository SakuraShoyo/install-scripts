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
        sudo apt install firefox -y
        ;;
      2)
        echo "Install Brave"
        sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
	echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
	sudo apt update -y
	sudo apt install brave-browser -y
	;;
      3)
        echo "Installing Chromium"
        sudo apt install chromium -y
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
