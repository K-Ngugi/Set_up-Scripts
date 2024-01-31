#!/bin/bash

echo "[+] Installing Postman"

sudo wget https://dl.pstmn.io/download/latest/linux64 -O postman-linux-x64.tar.gz && sudo tar -xvzf postman-linux-x64.tar.gz -C /opt && sudo ln -s /opt/Postman/Postman /usr/bin/postman

echo " [+] Installing mitmproxy2swagger"
sudo pip3 install mitmproxy2swagger

echo "[+] Installing Git"
sudo apt-get install git

echo "[+] Installing Docker"
sudo apt-get install docker.io docker-compose

echo "[+] Installing Go"
sudo apt install golang-go

echo "[+] Installing jwt_tool"
cd /opt
sudo git clone https://github.com/ticarpi/jwt_tool
cd jwt_tool

python3 -m pip install termcolor cprint pycryptodomex requests

#(Optional) Make an alias for jwt_tool.py

sudo chmod +x jwt_tool.py
sudo ln -s /opt/jwt_tool/jwt_tool.py /usr/bin/jwt_tool

echo "[+] Installing Kiterunner"
cd ~/Scripts
sudo git clone  https://github.com/assetnote/kiterunner.git
cd kiterunner
sudo make build
sudo ln -s /opt/kiterunner/dist/kr /usr/bin/kr


echo "[+] Installing Arjun"
sudo git clone https://github.com/s0md3v/Arjun.git

echo "[+] Installing OWASP ZAP"
sudo apt install zaproxy

sudo wget -c https://github.com/hAPI-hacker/Hacking-APIs/archive/refs/heads/main.zip -O HackingAPIs.zip \
&& sudo unzip HackingAPIs.zip \
&& sudo rm -f HackingAPIs.zip
