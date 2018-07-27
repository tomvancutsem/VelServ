FROM ubuntu:latest

MAINTAINER tomvancutsem

EXPOSE 3788

RUN echo $TZ > /etc/timezone && \
apt-get update && \
apt-get -y install gcc && \
apt-get -y install nano && \
mkdir -p /opt/velbus

ADD velserv.c /opt/velbus/velserv.c
RUN gcc -o /opt/velbus/velserv /opt/velbus/velserv.c -lpthread

RUN echo "./opt/velbus/velserv" >> /etc/rc.local
