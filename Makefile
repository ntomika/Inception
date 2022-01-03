DC_FILE = ./srcs/docker-compose.yml

start:
	docker-compose -f $(DC_FILE) up

down:
	docker-compose -f $(DC_FILE) down
	docker ps

re:
	docker-compose -f $(DC_FILE) up --build

stop:
	docker-compose -f $(DC_FILE) stop

clean:
	docker stop $$(docker ps -qa);\
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa)

.PHONY:	start down re stop clean
