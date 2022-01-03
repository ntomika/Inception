FROM	debian:buster

EXPOSE 9000

RUN	apt-get update && \
	apt-get install -y \
	php-mysqli \
	php-fpm \
	php-curl \
	php-gd \
	php-intl \
	php-mbstring \
	php-soap \
	php-xml \
	php-xmlrpc \
	php-zip \
	vim \
	wget \
	curl \
	mariadb-client \
	&& rm -rf /var/lib/apt/lists/*


COPY	./tools/www.conf /etc/php/7.3/fpm/pool.d/
RUN	chmod 744 /etc/php/7.3/fpm/pool.d/www.conf

RUN	mkdir /run/php

COPY	./tools/wpress_php.sh /var/www/
RUN	chmod 744 /var/www/wpress_php.sh

ENTRYPOINT	["bash", "/var/www/wpress_php.sh"]

CMD	["/usr/sbin/php-fpm7.3", "--nodaemonize"]
