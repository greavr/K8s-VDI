# Kubrnetes VDI Enivronment

## Components
<b><a href="https://guacamole.apache.org/">Apache Guacamole</a></b> Apache Guacamole is a clientless remote desktop gateway. It supports standard protocols like VNC, RDP, and SSH over html5. This acts as the session broker between backend services and front end.
<b><a href="https://www.mysql.com/">MySQL Server</a></b> Used to store inventory and backend session info.

## Back End Environments
### ubuntu-gnome
Running full GNOME desktop (with chrome and firefox) inside a xVNC ubuntu container backend.
```docker build -t ubuntu-vnc Ubuntu-Gnome-vnc/.``` <br />
```docker run --rm -ti --privileged -p 5901:5901 ubuntu-vnc /bin/bash``` <br />
or <br />
```docker run -d --privileged -p 5901:5901 --cpuset-cpus 2 --memory 512mb  ubuntu-vnc```

### ubuntu-chrome
Running only Chrome in xVNC ubuntu backend
```docker build -t ubuntu-chrome ubuntu-chrome/.``` <br />
```docker run --rm -ti --privileged -p 5901:5901 --cpuset-cpus 4 --memory 2048mb ubuntu-chrome /bin/bash``` <br />
or <br />
```docker run -d --privileged -p 5901:5901 --cpuset-cpus 4 --memory 2048mb  ubuntu-chrome``` <br />

### ubuntu-firefox
Running only firefox in xVNC ubuntu backend
```docker build -t ubuntu-firefox Ubuntu-Firefox/.``` <br />
```docker run --rm -ti --privileged -p 5901:5901 ubuntu-firefox /bin/bash``` <br />
or <br />
```docker run -d --privileged -p 5901:5901 ubuntu-firefox``` <br />

### chrome-vnc
Experimental chrome instance
```docker build -t chrome-vnc chrome-vnc/.``` <br />
```docker run --rm -ti --privileged -p 5900:5900 chrome-vnc /bin/bash``` <br />
or <br />
```docker run -d --privileged -p 5900:5900 chrome-vnc``` <br />