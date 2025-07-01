#!/bin/bash
echo '
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001

Package: firefox
Pin: version 1:1snap*
Pin-Priority: -1
' | sudo tee /etc/apt/preferences.d/mozilla-firefox
sudo add-apt-repository ppa:mozillateam/ppa -y
sudo apt update
git clone https://github.com/novnc/noVNC.git
sudo apt install tigervnc-standalone-server -y
sudo apt install openbox -y
sudo apt install firefox -y --allow-downgrades --no-install-recommends