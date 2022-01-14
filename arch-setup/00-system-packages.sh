#!/bin/bash
set -e
mkdir -pv ~/Programs

yes | sudo pacman -S  --needed base-devel \
                curl \
                wget \
                xorg-server \
                xorg-xrandr \
                xorg-xinit \
                lxappearance \
                wmctrl \
                xdotool \
                nitrogen \
                pulseaudio \
                pavucontrol \
                ranger \
                zsh \
                pkgfile \
                inetutils \
                xdg-utils \
                ueberzug \
                openssh
