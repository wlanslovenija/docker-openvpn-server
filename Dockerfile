FROM wlanslovenija/runit

MAINTAINER Jernej Kos <jernej@kos.mx>

EXPOSE 1194/udp

VOLUME /etc/openvpn/keys

RUN apt-get -q -q update && \
 apt-get --no-install-recommends --yes --force-yes install openvpn

ADD ./etc /etc

