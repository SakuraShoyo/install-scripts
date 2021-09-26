#!/bin/bash

## fonts
sudo pacman -S ttf-dejavu ttf-liberation noto-fonts powerline-fonts
mkdir -p Programs && mkdir -p ~/.local/share/fonts 
git clone git@github.com:Shoyo-0kbps/dotfiles.git ~/Programs
tar xvpf ~/Programs/dotfiles/fonts/fonts.tar.gz -C ~/.loca/share/fonts/ 


## fzf and cool stufs 
sudo pacman -S fzf 
