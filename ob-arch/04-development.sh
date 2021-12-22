#!/bin/bash
## NVIM AND NODE
echo "Install nvim and node..."
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

sudo pacman -S nodejs-lts-fermium neovim ccls npm

## PYENV and POETRY
#  OR PIP
#echo "Install pip"
#sudo pacman -S python-pip

curl -sSL https://install.python-poetry.org | python3 -

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

## Rust install 
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
