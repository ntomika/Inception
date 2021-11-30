FROM	debian:buster

RUN	apt-get update && \
	apt-get install -y \
	nginx \
	openssl \
	vim \
	&& rm -rf /var/lib/apt/lists/*

COPY	./nginx.conf /etc/nginx/sites-available
RUN	ln -s /etc/nginx/sites-available/nginx.config /etc/nginx/sites-enabled

RUN	openssl req -x509 -nodes -days 365 \
	-subj "/C=RU/ST=NOVOSIBIRSK/L=NOVOSIBIRSK/O=21SCHOOL/OU=ntomika" \
	-newkey rsa:2048 -keyout /etc/ssl/nginx-selfsigned.key \
	-out /etc/ssl/nginx-selfsigned.crt
