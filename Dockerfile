FROM phusion/baseimage:0.9.22

VOLUME ["/config"]

EXPOSE 6000

RUN echo $TZ > /etc/timezone && \
export DEBCONF_NONINTERACTIVE_SEEN=true DEBIAN_FRONTEND=noninteractive && \
apt-get update
