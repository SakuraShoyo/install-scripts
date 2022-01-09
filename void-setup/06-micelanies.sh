#!/bin/bash

## fonts
#sudo pacman -S ttf-dejavu ttf-liberation noto-fonts powerline-fonts
mkdir -p ~/Programs && mkdir -p ~/.local/share/fonts 
#git clone git@github.com:Shoyo-0kbps/dotfiles.git ~/Programs
#tar xvpf ~/Programs/dotfiles/fonts/fonts.tar.gz -C ~/.loca/share/fonts/ 

# ZSH
#sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#mv ~/Programs/dotfiles/.zshrc ~/.

##transparency
pushd ~/Programs
  wget http://www.forchheimer.se/transset-df/transset-df-6.tar.gz
  tar xvvf transset-df*.tar.gz
  cd transset-df-6/
  make && sudo make install

  #cd ../
  #git clone https://aur.archlinux.org/picom-jonaburg-git.git 
  #cd picom-jonaburg-git/
  #makepkg -si
  cd ../
popd
exit 0
