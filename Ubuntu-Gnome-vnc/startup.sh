#!/bin/bash
vncserver :1 -geometry 1280x800 -depth 24 && tail -F /home/apps/.vnc/*.log