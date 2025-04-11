#! /usr/bin/bash
sudo apt update && sudo apt install tigervnc-standalone-server qemu-kvm firefox openbox neofetch kitty -y
echo "if you want to install a desktop, run sudo apt install lxqt or sudo apt install xfce4 xfce4-goodies"
git clone https://github.com/novnc/noVNC.git
cd noVNC
sudo vncserver -SecurityTypes None -rfbport 5080 
./utils/novnc_proxy --vnc 127.0.0.1:5080 --listen localhost:8000
