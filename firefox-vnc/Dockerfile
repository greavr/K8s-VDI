FROM ubuntu:trusty

RUN apt-get update; apt-get clean

# Add a user for running applications.
RUN useradd apps
RUN mkdir -p /home/apps && chown apps:apps /home/apps



# Install x11vnc.
RUN apt-get install -y x11vnc

# Install xvfb.
RUN apt-get install -y xvfb

# Install fluxbox.
RUN apt-get install -y fluxbox

# Install wget.
RUN apt-get install -y wget

# Install wmctrl.
RUN apt-get install -y wmctrl

# Install Chrome.
RUN apt-get update && apt-get -y install firefox

COPY menu /.fluxbox/menu

COPY bootstrap.sh /

CMD '/bootstrap.sh'