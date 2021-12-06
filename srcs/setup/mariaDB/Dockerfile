FROM	debian:buster

EXPOSE	3306

RUN	apt-get update && \
	apt-get install -y \
	mariadb-server \
	vim \
	&& rm -rf /var/lib/apt/lists/*

COPY	./50-server.cnf /etc/mysql/mariadb.conf.d/
RUN	chmod 777 /etc/mysql/mariadb.conf.d/50-server.cnf

COPY	init.sh /var/www/
RUN	chmod 777 /var/www/init.sh 

ENTRYPOINT ["bash", "/var/www/init.sh"]
