#! /usr/bin/bash
sudo apt update && sudo apt install tigervnc-standalone-server qemu-kvm firefox kde-plasma-desktop neofetch kitty -y
git clone https://github.com/novnc/noVNC.git
cd noVNC
sudo vncserver -rfbport 5080 
  PASSWORD:'123456'
  vncpassword -f <<< "$PASSWORD\n$PASSWORD" > ~/.vnc/passwd
  chmod 600 ~/.vnc/passwd
  echo "VNC password set to: $PASSWORD"
./utils/novnc_proxy --vnc 127.0.0.1:5080 --listen localhost:8000
