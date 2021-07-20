#!/bin/bash
set +e
curl --create-dirs -O --output-dir ~/Documents/Arduino-CLI https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh

arduino_cli_path='Documents/Arduino-CLI/' 

chmod +x ~/$arduino_cli_path/install.sh
sh ~/$arduino_cli_path/install.sh

##install my boards
cp ~/.config/arduino-esp-templates/arduino-cli.yaml ~/.arduino15/
exec ~/$arduino_cli_path/bin/arduino-cli core update-index --config-file ~/.arduino15/arduino-cli.yaml
exec ~/$arduino_cli_path/bin/arduino-cli core install arduino:avr
exec ~/$arduino_cli_path/bin/arduino-cli core install esp32:esp32
