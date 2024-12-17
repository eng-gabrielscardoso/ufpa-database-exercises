include .env

DOCKER_COMPOSE := $(shell if command -v docker compose > /dev/null 2>&1; then echo "docker compose"; else echo "docker-compose"; fi)

check-compose:
	@echo $(DOCKER_COMPOSE)

up:
	@$(DOCKER_COMPOSE) up -d

start:
	@$(DOCKER_COMPOSE) start

stop:
	@$(DOCKER_COMPOSE) stop

remove:
	@$(DOCKER_COMPOSE) down -v

restart:
	@$(DOCKER_COMPOSE) restart

rebuild:
	@$(DOCKER_COMPOSE) down -v
	@$(DOCKER_COMPOSE) up -d --force-recreate

server:
	@$(DOCKER_COMPOSE) exec mysql bash

mysql:
	@$(DOCKER_COMPOSE) exec mysql mysql -u ${DB_USERNAME} --password=${DB_PASSWORD}

evaluate:
	@$(DOCKER_COMPOSE) exec -T mysql mysql -u ${DB_USERNAME} --password=${DB_PASSWORD} ${DB_DATABASE} < $(file)

