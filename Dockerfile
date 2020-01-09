FROM armhf/alpine
MAINTAINER gurcan@gurcanozturk.com

COPY mp3server.pl /mp3server.pl

RUN mkdir /MP3

RUN apk update && \
	apk --no-cache add perl && \
	chmod +x /mp3server.pl && \
	rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*

EXPOSE 3000

CMD [ "perl", "./mp3server.pl", "-d", "/MP3", "-r"]
