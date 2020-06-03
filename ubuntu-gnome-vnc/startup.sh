#!/bin/bash
rm -rf /tmp/.X*
vncserver :1 -geometry 1280x800 -depth 24 && tail -F /home/apps/.vnc/*.log