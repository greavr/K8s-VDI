#ubuntu-gnome
docker build -t ubuntu-vnc Ubuntu-Gnome-vnc/.
docker run --rm -ti --privileged -p 5901:5901 ubuntu-vnc /bin/bash
or
docker run -d --privileged -p 5901:5901 --cpuset-cpus 2 --memory 512mb  ubuntu-vnc

#ubuntu-chrome
docker build -t ubuntu-chrome ubuntu-chrome/.
docker run --rm -ti --privileged -p 5901:5901 --cpuset-cpus 4 --memory 2048mb ubuntu-chrome /bin/bash
or
docker run -d --privileged -p 5901:5901 --cpuset-cpus 4 --memory 2048mb  ubuntu-chrome

#ubuntu-firefox
docker build -t ubuntu-firefox Ubuntu-Firefox/.
docker run --rm -ti --privileged -p 5901:5901 ubuntu-firefox /bin/bash
or
docker run -d --privileged -p 5901:5901 ubuntu-firefox

#chrome-vnc
docker build -t chrome-vnc chrome-vnc/.
docker run --rm -ti --privileged -p 5900:5900 chrome-vnc /bin/bash
or
docker run -d --privileged -p 5900:5900 chrome-vnc