#!/bin/bash
rm -rf /tmp/.X*
vncserver :1 -depth 24 && tail -F /home/apps/.vnc/*.log