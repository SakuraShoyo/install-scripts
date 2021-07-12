#!/bin/bash
## NVIM AND NODE
echo "Install nvim and node..."
sudo pacman -S nodejs-lts-fermium neovim ccls 

## PYENV
echo "Install Pyenv..."
sudo pacman -S openssl zlib xz

git clone https://github.com/pyenv/pyenv.git ~/.pyenv

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc


## DOCKE
echo "Install docker..."
sudo pacman -S docker

