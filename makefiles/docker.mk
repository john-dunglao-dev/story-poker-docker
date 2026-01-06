ENV?=dev
ARGUMENT?=

COMPOSE_COMMAND = docker compose -f ./docker/docker-compose.$(ENV).yml

access:
	$(COMPOSE_COMMAND) exec -it $(ARGUMENT)

command:
	$(COMPOSE_COMMAND) $(ARGUMENT)