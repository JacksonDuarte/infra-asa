FROM ubuntu:latest

RUN apt-get update \
  && apt-get install -y \
  bind9 \
  bind9utils \
  bind9-doc \
  nano \
  dnsutils \
  iputils-ping \
  procps

CMD /usr/sbin/named ; tail -F /dev/null