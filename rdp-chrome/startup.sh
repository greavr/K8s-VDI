#!/bin/bash
rm -f ~/.xrdp-unix
#socat unix-listen:~/.xrdp-unix,fork tcp-connect:localhost:3389
xrdp-sesman
ss -nltp
# don't know why, but 1st may fail
xrdp-sesman
ss -nltp
xrdp -n