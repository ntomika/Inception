FROM	debian:buster

EXPOSE	3306

RUN	apt-get update && \
	apt-get install -y \
	mariadb-server \
	vim \
	&& rm -rf /var/lib/apt/lists/*

COPY	./tools/50-server.cnf /etc/mysql/mariadb.conf.d/
RUN	chmod 744 /etc/mysql/mariadb.conf.d/50-server.cnf

COPY	./tools/init.sh /var/www/
RUN	chmod 744 /var/www/init.sh 

ENTRYPOINT ["bash", "/var/www/init.sh"]
