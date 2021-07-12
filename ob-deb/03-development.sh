#!/bin/bash
## NVIM AND NODE
echo "Install nvim and node..."
sudo apt install snapd
sudo snap install core \
                  node --classic \
                  nvim --classic \
                  clangd --classic

## PYENV
echo "Install Pyenv..."
sudo apt-get update; 
sudo apt-get install make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc


## DOCKE
echo "Install docker..."
sudo apt install apt-transport-https \
                 ca-certificates \
                 curl \
                 gnupg \
                 lsb-releaseR

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update 
sudo apt-get install docker-ce docker-ce-cli containerd.io

