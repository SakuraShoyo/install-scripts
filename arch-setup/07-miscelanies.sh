#!/bin/bash

## Fonts
sudo pacman -S ttf-dejavu ttf-liberation noto-fonts powerline-fonts --noconfirm | tee -a ./logfiles/07sh/fonts_install.log
mkdir -pv ~/Programs 
mkdir -pv ~/.local/share/fonts | tee -a ./logfiles/07sh/fonts_install.log  

if [ ! -d ~/Programs/dotfiles ]; then
  git clone https://github.com/Shoyo-0kbps/dotfiles ~/Programs/dotfiles
else 
  tar xvvf ~/Programs/dotfiles/fonts/fonts.tar.gz -C ~/.local/share/fonts/ | tee -a ./logfiles/07sh/fonts_install.log
fi

## ZSH
sudo pacman -S zsh --noconfirm | tee -a ./logfiles/07sh/zsh_install.log
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && exit
cp -rv ~/Programs/dotfiles/.zshrc ~/. | tee -a ./logfiles/07sh/zsh_install.log

## Transparency
echo "picom transparency? (y/n)" | tee -a ./logfiles/07sh/picom_install.log
read -p "Option: " OPTION

case "$OPTION" in 
  y)
    pushd ~/Programs/ 
      git clone https://aur.archlinux.org/picom-jonaburg-git.git ~/Programs/picom-jonaburg-git | tee -a ./logfiles/07sh/picom_install.log
      cd ~/Programs/picom-jonaburg-git && makepkg -si | tee -a ./logfiles/07sh/picom_install.log
    popd
    ;;
  n)
    echo "Not instaled\n"
    ;;
  *)
    echo "invalid option!" | tee -a ./logfiles/07sh/picom_install.log
    ;;
esac


## Extra Programs
echo "\nISNTALL DISCORD\n" >> ./logfiles/07sh/misc_install.log  
sudo pacman -S discord --noconfirm | tee -a ./logfiles/07sh/misc_install.log
#sudo pacman -S virtualbox

## Timeshift
echo "install Timeshift"
git clone https://aur.archlinux.org/timeshift.git ~/Programs/timeshift | tee -a ./logfiles/07sh/timeshift_install.log
cd ~/Programs/timeshift && makepkg -si | tee -a ./logfiles/07sh/timeshift_install.log

## Wine
echo "wine? (y/n)" | tee -a ./logfiles/07sh/wine_install.log
read -p "Option: " OPTION

case "$OPTION" in 
  y) 
    echo "[multilib]" | sudo tee -a /etc/pacman.conf 
    echo "Include = /etc/pacman.d/mirrorlist" | sudo tee -a /etc/pacman.conf 
    sudo pacman -Syu --noconfirm | tee -a ./logfiles/07sh/wine_install.log  
    sudo pacman -S wine  --noconfirm | tee -a ./logfiles/07sh/wine_install.log
    ;;
  n)
    echo "Not instaled\n"
    ;;
  *)
    echo "invalid option!"| tee -a ./logfiles/07sh/wine_install.log
    ;;
esac

exit 0
