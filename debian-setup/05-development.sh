#!/bin/bash

## NVIM AND NODE
echo "Installing nvim and node..."
echo -e "\nNVIM INSTALL\n" >> ./logfiles/05sh/nvim_deps_install.log
sudo apt install neovim -y 

##NODE
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs

## POETRY and PIP
echo "Installing pyenv and pipx"
curl https://pyenv.run | bash
sudo apt install pipx -y

echo "Installing poetry"
pipx install poetry
poetry completions bash >> ~/.bash_completion

## DOCKE
echo "Installing docker..."
sudo apt install docker -y  

## CLANG
echo "Installing clang"
sudo apt install clang clang-tools bear -y

