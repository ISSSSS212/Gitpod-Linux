#! /usr/bin/bash
echo '
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001

Package: firefox
Pin: version 1:1snap*
Pin-Priority: -1
' | sudo tee /etc/apt/preferences.d/mozilla-firefox
sudo add-apt-repository ppa:mozillateam/ppa -y
sudo apt update && sudo apt install tigervnc-standalone-server qemu-kvm qemu-system libvirt-daemon-system libvirt-clients bridge-utils virt-manager firefox openbox neofetch kitty -y
git clone https://github.com/novnc/noVNC.git
cd noVNC
vncserver -SecurityTypes None -rfbport 5080 
./utils/novnc_proxy --vnc 127.0.0.1:5080 --listen localhost:8000

echo "if you want to install a desktop, run sudo apt install lxqt or sudo apt install xfce4 xfce4-goodies"