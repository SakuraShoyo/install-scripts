#!/bin/bash

mkdir -pv ~/{Programs/,Downloads/}
mkdir -pv ~/Media/{Wallpapers,Misc,Screenshots,Videos}
mkdir -pv ~/Documents/Code/{Python/,Shell/,JS-TS/,C-CPP/}
mkdir -pv ~/.local/share/fonts/
mkdir -pv ~/.config/nvim
mkdir -pv ~/{.themes/,.icons/}

if [ ! -d ~/Programs/dotfiles ]; then
  git clone https://github.com/Shoyo-0kbps/dotfiles
fi

if [ ! -d ~/Programs/vim-config ]; then
  git clone https://github.com/Shoyo-0kbps/vim-config
fi

./00-system-packages.sh
./01-graphic-interface.sh
./02-term.sh
./03-panel.sh
./04-browsers.sh
./05-development.sh
./07-miscelanies.sh

cp ~/Programs/vim-config/* ~/.config/nvim/
source ~/.config/nvim/dependencies.sh

cp -r ~/Programs/dotfiles/{scripts,zathura} ~/.config/ 

if [ -f "$(which bspwm 2>/dev/null)" ]; then
  cp -r ~/Programs/dotfiles/{bspwm/,sxhkd/,fish/} ~/.config/
fi

if [ -f "$(which polybar 2>/dev/null)" ]; then
  cp -r ~/Programs/dotfiles/polybar ~/.config/
fi

if [ -f "$(which picom 2>/dev/null)" ]; then
  cp -r ~/Programs/dotfiles/picom ~/.config/
fi

if [ -f "$(which alacritty 2>/dev/null)" ]; then
  cp -r ~/Programs/dotfiles/alacritty ~/.config/
fi

if [ -f "$(which rofi 2>/dev/null)" ]; then
  cp -r ~/Programs/dotfiles/rofi ~/.config/
fi

if [ -f "$(which openbox 2>/dev/null)" ]; then
  cp -r ~/Programs/dotfiles/openbox ~/.config/
  cp -r ~/Programs/dotfiles/.themes/Shoyo-Theme ~/.themes
fi

ranger --copy-config=all
cp -r ~/Programs/dotfiles/ranger/* ~/.config/ranger/
cp ~/Programs/dotfiles/.themes/shoyo.zsh-theme ~/..oh-my-zsh/themes/
