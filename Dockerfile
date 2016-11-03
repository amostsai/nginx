FROM amostsai/ubuntu_base:16.04
MAINTAINER Amos Tsai <amos.tsai@gmail.com>

RUN \
	apt-get update && \
	apt-get upgrade install -y nginx && \
	rm -rf /var/lib/apt/lists/* && \
	echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
	chown -R www-data:www-data /var/lib/nginx