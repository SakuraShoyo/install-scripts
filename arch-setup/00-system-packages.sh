#!/bin/bash
set -e
mkdir -pv ~/Programs

sudo pacman -S  --needed base-devel \
                curl \
                wget \
                sed \
                openssh \
                os-prober \
                ntfs-3g \
                git \
                cronie \
                unrar \
                dnsmasq \
                iptables-nft \
                pkgfile \
                ranger \
                lxappearance \
                brightnessctl \
                inetutils --noconfirm

#YAY
pushd ~/Programs/
  git clone https://aur.archlinux.org/yay.git | tee -a ./logfiles/00sh/yay.log
  cd yay 
  makepkg -si | tee -a ./logfiles/00sh/yay.log  
popd


