#!/bin/bash
set -e
mkdir -pv ~/Programs
  
sudo xbps-install base-devel \
			curl \
                	wget \
                	xorg-minimal \
                	xinit \
                	lxappearance \
                	wmctrl \
                	xdotool \
                	pulseaudio \
                	pavucontrol \
                	ranger \
                	zsh \
                	xdg-utils \
                	ueberzug \
			make
