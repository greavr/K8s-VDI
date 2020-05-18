#!/bin/bash
vncserver :1 -geometry 1280x1000 -depth 24 && tail -F /home/apps/.vnc/*.log