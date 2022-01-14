#!/bin/bash

## fonts
yes | sudo pacman -S ttf-dejavu ttf-liberation noto-fonts powerline-fonts
mkdir -pv ~/Programs 
mkdir -pv ~/.local/share/fonts 

if [ ! -d ~/Programs/dotfiles ]; then
  git clone https://github.com/Shoyo-0kbps/dotfiles ~/Programs/dotfiles
fi

tar xvvf ~/Programs/dotfiles/fonts/fonts.tar.gz -C ~/.loca/share/fonts/ 

# ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mv ~/Programs/dotfiles/.zshrc ~/.

##transparency

git clone https://aur.archlinux.org/picom-jonaburg-git.git ~/Programs/picom-jonaburg-git
cd ~/Programs/picom-jonaburg-git && makepkg -si

## Extra Programs
yes | sudo pacman -S discord
sudo pacman -S virtualbox

git clone https://aur.archlinux.org/timeshift.git ~/Programs/timeshift
cd ~/Programs/timeshift && makepkg -si

exit 0
