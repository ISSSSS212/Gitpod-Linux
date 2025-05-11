#!/bin/bash
vncserver -SecurityTypes none -xstartup "openbox" -rfbport 5080
cd noVNC
./utils/novnc_proxy --vnc localhost:5080 --listen localhost:8000