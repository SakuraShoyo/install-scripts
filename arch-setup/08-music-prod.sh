#!/bin/bash

sudo groupadd audio
sudo usermod -a -G audio $USER 
echo "#audio" | sudo tee -a /etc/security/limits.conf
echo "@audio   -   rtprio    95" | sudo tee -a /etc/security/limits.conf
echo "@audio   -   memlock   unlimited" | sudo tee -a /etc/security/limits.conf
echo "yes" | sudo pacman -S cadence ardour

echo "zyn fusion pluggin? (y/n)"

read -r "Option: " OPTION 

case "$OPTION" in 
  y)
    wget http://fundamental-code.com/zyn-fusion/zyn-fusion-linux-64bit-3.0.6-demo.tar.bz2 -P ~/Programs/
    pushd ~/Programs/ 
     tar -xf zyn-fusion*.tar.*
     cd zyn-fusion*/
     sudo ./setup.shinstall-linux.sh 
    popd
    ;;
  n)
    ;;
  *)
    echo "invalid option!"
    ;;
esac



