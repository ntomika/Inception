DC_FILE = ./srcs/docker-compose.yaml

start:
	docker-compose -f $(DC_FILE) up

down:
	docker-compose -f $(DC_FILE) down

re:
	docker-compose -f $(DC_FILE) up --build

stop:
	docker-compose -f $(DC_FILE) stop

clean:
	docker stop $$(docker ps -qa);\
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker network rm $$(docker network ls -q) 2>/dev/null

.PHONY:	start down re stop clean
