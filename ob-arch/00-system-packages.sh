#!/bin/bash
set -e
mkdir -pv ~/Programs
  
sudo pacman -S  --needed base-devel \
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
                fish \
                pkgfile \
                inetutils \
                xdg-utils \
                ueberzug \
                xcompmgr

