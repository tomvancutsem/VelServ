FROM phusion/baseimage:0.9.22

MAINTAINER tomvancutsem

VOLUME ["/config"]

EXPOSE 3788

ADD velserv.c /config/velserv.c
RUN echo $TZ > /etc/timezone && \
apt-get update && \
apt-get -y install gcc && \
gcc -o /config/velserv /config/velserv.c -lpthread

RUN mkdir -p /etc/my_init.d
ADD startVelServ.sh /etc/my_init.d/startVelServ.sh
RUN chmod +x /etc/my_init.d/startVelServ.sh
