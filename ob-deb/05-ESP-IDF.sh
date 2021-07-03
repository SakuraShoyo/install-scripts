#!/bin/bash
sudo apt-get install git wget flex bison gperf python3 python3-pip python3-setuptools \
                     cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0

mkdir -p ~/esp && 
git clone --recursive https://github.com/espressif/esp-idf.git ~/esp
exec ~/esp/esp-idf/install.sh
echo alias get_idf='. $HOME/esp/esp-idf/export.sh' >> ~/.bashrc
