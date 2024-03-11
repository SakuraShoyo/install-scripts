#!/bin/bash

## NVIM AND NODE
echo "Installing nvim and node..."
echo -e "\nNVIM INSTALL\n" >> ./logfiles/05sh/nvim_deps_install.log
sudo pacman -S neovim --noconfirm | tee -a .logfiles/05sh/nvim_deps_install.log

NODE
sudo pacman -S nodejs-lts-iron npm --noconfirm | tee -a ./logfiles/05sh/node_install.log

## POETRY and PIP
echo "Installing pyenv and pipx"
sudo pacman -S pyenv python-pipx --noconfirm | tee -a .logfiles/05sh/python_dev_kit.log
echo "Installing poetry"
pipx install poetry | tee -a .logfiles/05sh/python_dev_kit.log
poetry completions bash >> ~/.bash_completion

## DOCKE
echo "Installing docker..."
sudo pacman -S docker --noconfirm | tee -a ./logfiles/05sh/docker_install.log  

## RUST
echo "Installing rust"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh| tee -a ./logfiles/05sh/rust_install.log

## CLANG
echo "Installing clang"
sudo pacman -S clang clang-tools-extra bear| tee -a .logfiles/05sh/clang_install.log
