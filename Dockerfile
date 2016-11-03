FROM amostsai/ubuntu_base:16.04
MAINTAINER Amos Tsai <amos.tsai@gmail.com>

RUN \
	apt-get update && \
#	apt-get upgrade && \
	apt-get install -y nginx && \
	echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
	chown -R www-data:www-data /var/lib/nginx && \

	# Clean up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    apt-get autoremove -y && \
    apt-get clean