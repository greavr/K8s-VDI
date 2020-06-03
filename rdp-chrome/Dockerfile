# Pull base image.
FROM ubuntu
# Install LXDE and VNC server.

ENV DEBIAN_FRONTEND noninteractive
ENV USER apps

RUN useradd apps
RUN mkdir -p /home/apps && chown apps:apps /home/apps

RUN apt-get update && \
    apt-get install -y xrdp xorgxrdp wget socat iproute2 sudo xfce4 xfce4-goodies xorg dbus-x11 x11-xserver-utils

# Update XRDP security
ADD xrdp.ini /etc/xrdp/

# Set the Chrome repo.
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list

# Install Chrome.
RUN apt-get update && apt-get -y install google-chrome-stable && \
    rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /data

# Add starup script
ADD startup.sh /
RUN chmod +x /startup.sh

# Set User
#USER apps

# Expose ports.
EXPOSE 3389

# Define default command.
CMD ["/startup.sh"]