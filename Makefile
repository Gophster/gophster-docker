include .env

.PHONY: up down stop prune ps shell  logs bash-api bash-frontend setup

default: up

up:
	@echo "Starting up containers for $(PROJECT_NAME)..."
	docker-compose pull
	docker-compose up -d --remove-orphans

down: stop

bash-api:
	@docker exec -it --user node gophster.api bash

bash-frontend:
	@docker exec -it --user node gophster.frontend bash

stop:
	@echo "Stopping containers for $(PROJECT_NAME)..."
	@docker-compose stop

prune:
	@echo "Removing containers for $(PROJECT_NAME)..."
	@docker-compose down -v

ps:
	@docker ps --filter name='$(PROJECT_NAME)*'


logs:
	@docker-compose logs -f $(filter-out $@,$(MAKECMDGOALS))

clone:
	@mkdir -p services
	@cd services && \
	git clone -b develop $(API_REPO) && \
	git clone -b develop $(ANGULAR_REPO)

install:
	./scripts/install.sh


# https://stackoverflow.com/a/6273809/1826109
%:
	@:
