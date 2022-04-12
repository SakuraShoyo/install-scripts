#!/bin/bash

## Fonts
yes | sudo pacman -S ttf-dejavu ttf-liberation noto-fonts powerline-fonts
mkdir -pv ~/Programs 
mkdir -pv ~/.local/share/fonts 

if [ ! -d ~/Programs/dotfiles ]; then
  git clone https://github.com/Shoyo-0kbps/dotfiles ~/Programs/dotfiles
  tar xvvf ~/Programs/dotfiles/fonts/fonts.tar.gz -C ~/.loca/share/fonts/ 
fi

## ZSH
yes | sudo pacman -S zsh 
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mv ~/Programs/dotfiles/.zshrc ~/.

## Transparency
echo "picom transparency? (y/n)"
read -r "Option: " OPTION 

case "$OPTION" in 
  y)
    pushd ~/Programs/ 
      git clone https://aur.archlinux.org/picom-jonaburg-git.git ~/Programs/picom-jonaburg-git
      cd ~/Programs/picom-jonaburg-git && makepkg -si
    popd
    ;;
  n)
    ;;
  *)
    echo "invalid option!"
    ;;
esac


## Extra Programs
yes | sudo pacman -S discord
#sudo pacman -S virtualbox

## Timeshift
git clone https://aur.archlinux.org/timeshift.git ~/Programs/timeshift
cd ~/Programs/timeshift && makepkg -si

## Wine

echo "wine? (y/n)"
read -r "Option: " OPTION 

case "$OPTION" in 
  y) 
    echo "[multilib]" | sudo tee -a /etc/pacman.conf 
    echo "Include = /etc/pacman.d/mirrorlist" | sudo tee -a /etc/pacman.conf 
    yes | sudo pacman -Syu
    yes | sudo pacman -S wine 
    ;;
  n)
    ;;
  *)
    echo "invalid option!"
    ;;
esac

exit 0
