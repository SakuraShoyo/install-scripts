#!/bin/bash
sudo pacman -S gcc make flex bison gperf python-pip cmake ninja ccache dfu-util libusb

mkdir -p ~/esp/esp-idf && 
git clone --recursive https://github.com/espressif/esp-idf.git ~/esp/esp-idf
exec ~/esp/esp-idf/install.sh
echo alias get_idf='. $HOME/esp/esp-idf/export.sh' >> ~/.bashrc
