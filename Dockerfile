FROM alpine:latest

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories \
	&& apk update \
	&& apk add simh curl tmux \
	&& curl https://raymii.org/s/inc/downloads/pdp/advent.rk05 -kLo /advent.rk05

COPY entrypoint.sh simh.cfg /

ENTRYPOINT /entrypoint.sh
