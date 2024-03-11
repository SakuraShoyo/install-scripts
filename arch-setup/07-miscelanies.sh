#!/bin/bash

mkdir -pv ~/Programs 

## Fonts
sudo pacman -S ttf-dejavu ttf-liberation noto-fonts powerline-fonts --noconfirm | tee -a ./logfiles/07sh/fonts_install.log
mkdir -pv ~/.local/share/fonts | tee -a ./logfiles/07sh/fonts_install.log  

if [ ! -d ~/Programs/dotfiles ]; then
  git clone https://github.com/frmiza/dotfiles ~/Programs/dotfiles
else 
  tar xvvf ~/Programs/dotfiles/fonts/fonts.tar.gz -C ~/.local/share/fonts/ | tee -a ./logfiles/07sh/fonts_install.log
fi

## ZSH
sudo pacman -S zsh --noconfirm | tee -a ./logfiles/07sh/zsh_install.log
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && exit
cp -rv ~/Programs/dotfiles/.zshrc ~/. | tee -a ./logfiles/07sh/zsh_install.log

## Extra Programs
echo "Installing Discord\n" >> ./logfiles/07sh/misc_install.log  
sudo pacman -S discord --noconfirm | tee -a ./logfiles/07sh/misc_install.log

## Spotify 
echo "install Spotify"
sudo yay -S spotify --noconfirm | tee -a ./logfiles/07sh/spotify.log


## change old linux programs 
sudo pacman -S htop duf --noconfirm | tee -a ./logfiles/07sh/misc_progs.log

exit 0

## Timeshift
#echo "install Timeshift"
#sudo yay -S timeshift --noconfirm | tee -a ./logfiles/07sh/timeshift_install.log

## Wine
#echo "wine? (y/n)" | tee -a ./logfiles/07sh/wine_install.log
#read -p "Option: " OPTION

#case "$OPTION" in 
#  y) 
#    echo "[multilib]" | sudo tee -a /etc/pacman.conf 
#    echo "Include = /etc/pacman.d/mirrorlist" | sudo tee -a /etc/pacman.conf 
#    sudo pacman -Syu --noconfirm | tee -a ./logfiles/07sh/wine_install.log  
#    sudo pacman -S wine  --noconfirm | tee -a ./logfiles/07sh/wine_install.log
#    ;;
#  n)
#    echo "Not instaled\n"
#    ;;
#  *)
#    echo "invalid option!"| tee -a ./logfiles/07sh/wine_install.log
#    ;;
#esac
