FROM phusion/baseimage:0.9.22

MAINTAINER tomvancutsem

EXPOSE 3788

RUN echo $TZ > /etc/timezone && \
apt-get update && \
apt-get -y install gcc && \
mkdir -p /opt/velbus

ADD velserv.c /opt/velbus/velserv.c
RUN gcc -o /opt/velbus/velserv /opt/velbus/velserv.c -lpthread

RUN mkdir -p /etc/my_init.d
ADD startVelServ.sh /etc/my_init.d/startVelServ.sh
RUN chmod +x /etc/my_init.d/startVelServ.sh
