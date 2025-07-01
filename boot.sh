#!/bin/bash
check_installed() {
    required_applications=( "firefox" "openbox" "tigervnc-standalone-server")
}
if command -v sudo vncserver -SecurityTypes none -xstartup "openbox" -rfbport 5080 &> /dev/null; then
        command -v firefox &> /dev/null;
else ./repair.sh
fi
if command -v firefox &> /dev/null; then
    command -v openbox &> /dev/null;
else ./repair.sh
fi 
if command -v ./utils/novnc_proxy &> /dev/null; then
    end
else ./repair.sh
fi

vncserver -SecurityTypes none -xstartup "openbox" -rfbport 5080
cd noVNC
./utils/novnc_proxy --vnc localhost:5080 --listen localhost:8000 