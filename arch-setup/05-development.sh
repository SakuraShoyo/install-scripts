#!/bin/bash

## NVIM AND NODE
echo "Install nvim and node..."
echo -e "\nNVIM INSTALL\n" >> ./logfiles/05sh/nvim_deps_install.log
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim | tee -a ./logfiles/05sh/nvim_deps_install.log

sudo pacman -S nodejs-lts-fermium neovim ccls npm --noconfirm | tee -a ./logfiles/05sh/nvim_deps_install.log

## POETRY and PIP
echo "Install pip"
sudo pacman -S python-pip --noconfirm | tee -a ./logfiles/05sh/python_deps_install.log

curl -sSL https://install.python-poetry.org | python3 - | tee -a ./logfiles/05sh/python_deps_install.log

echo "Install Pyenv..."
sudo pacman -S openssl zlib xz | tee -a ./logfiles/05sh/python_deps_install.log
git clone https://github.com/pyenv/pyenv.git ~/.pyenv | tee -a ./logfiles/05sh/python_deps_install.log

## DOCKE
echo "Install docker..."
sudo pacman -S docker --noconfirm | tee -a ./logfiles/05sh/docker_install.log  

## Rust install 
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh | tee -a ./logfiles/05sh/rust_install.log

## Clang install
sudo pacman -S clang clang-tools-extra bear
