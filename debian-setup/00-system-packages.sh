#!/bin/bash
set -e
mkdir -pv ~/Programs

sudo apt install curl \
                 wget \
                 sed \
                 openssh-server \
                 os-prober \
                 ntfs-3g \
                 git \
                 cron \
		 p7zip-full \
		 openssl \
                 unzip \
                 dnsmasq \
                 nftables \
                 apt-file \
                 ranger \
                 lxappearance \
                 brightnessctl \
                 ftp \
		 gnupg2 \
		 netcat-openbsd -y
