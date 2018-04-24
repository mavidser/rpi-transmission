FROM resin/rpi-raspbian:stretch-20180411
LABEL maintainer="Sid Verma <me@sidverma.io>"

RUN apt-get update \
  && apt-get upgrade

RUN apt-get install transmission-daemon

EXPOSE 9091
EXPOSE 51413
EXPOSE 51413/udp

ENTRYPOINT transmission-daemon -f -g /config
