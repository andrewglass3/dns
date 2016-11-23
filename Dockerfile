FROM ubuntu:xenial
MAINTAINER Andrew Glass <andrew.glass@outlook.com>

RUN apt-get -q update && \
    apt-get -qy upgrade && \
    apt-get install -qy --force-yes bind9 wget

EXPOSE 53/tcp 53/udp

VOLUME ["/etc/bind","/var/lib/bind"]

WORKDIR /var/lib/bind

CMD ["start"]

