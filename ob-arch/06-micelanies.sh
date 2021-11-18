#!/bin/bash

## fonts
sudo pacman -S ttf-dejavu ttf-liberation noto-fonts powerline-fonts
mkdir -p Programs && mkdir -p ~/.local/share/fonts 
git clone git@github.com:Shoyo-0kbps/dotfiles.git ~/Programs
tar xvpf ~/Programs/dotfiles/fonts/fonts.tar.gz -C ~/.loca/share/fonts/ 


##transparency
mkdir -pv ~/Programs
wget http://www.forchheimer.se/transset-df/transset-df-6.tar.gz -P ~/Programs 

tar xvvf ~/Programs/transset-df-6.tar.gz -C ~/Programs
cd ~/Programs/transset-df-6
make && sudo make install
