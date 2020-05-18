# Pull base image.
FROM ubuntu
# Install LXDE and VNC server.

ENV DEBIAN_FRONTEND noninteractive
ENV USER apps

RUN useradd apps
RUN mkdir -p /home/apps && chown apps:apps /home/apps

RUN apt-get update && \
    apt-get install -y tightvncserver gpg-agent wget

# Set the Chrome repo.
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list

# Install Chrome.
RUN apt-get update && apt-get -y install google-chrome-stable && \
    rm -rf /var/lib/apt/lists/*



# Define working directory.
WORKDIR /data

ADD xstartup /home/apps/.vnc/xstartup

RUN \
    mkdir -p /home/apps/.vnc/ && \
    echo password | vncpasswd -f > /home/apps/.vnc/passwd && \
    chmod 0600 /home/apps/.vnc/passwd && \
    chmod 777 /home/apps/.vnc/xstartup && \
    mkdir -p /home/apps/.config/nautilus && \
    chown apps:apps -R /home/apps/

# Add starup script
ADD startup.sh /
RUN chmod +x /startup.sh

# Set User
USER apps

# Expose ports.
EXPOSE 5901

# Define default command.
CMD ["/startup.sh"]