#! /usr/bin/bash
sudo apt update && sudo apt install tigervnc-standalone-server qemu-kvm firefox kde-plasma-desktop neofetch kitty -y
git clone https://github.com/novnc/noVNC.git
cd noVNC
sudo vncpasswd 123456
sudo vncserver -rfbport 5080 
./utils/novnc_proxy --vnc 127.0.0.1:5080 --listen localhost:8000
