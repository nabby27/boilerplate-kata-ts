.PHONY: up stop build install test test-watch test-coverage test-all eslint-check eslint-fix

CONTAINER_NAME=boilerplate_kata_ts

up:
	@docker-compose up -d

stop:
	@docker-compose down

build: up
	@docker-compose exec $(CONTAINER_NAME) npm run build || $(MAKE) stop
	${MAKE} stop

install: up
	@docker-compose exec $(CONTAINER_NAME) npm install $(ARGS) || $(MAKE) stop
	${MAKE} stop

test: up
	@docker-compose exec $(CONTAINER_NAME) npm run test || $(MAKE) stop
	${MAKE} stop

test-watch: up
	@docker-compose exec $(CONTAINER_NAME) npm run test:watch || $(MAKE) stop
	$(MAKE) stop

test-coverage: up
	@docker-compose exec $(CONTAINER_NAME) npm run test:coverage || $(MAKE) stop
	@docker-compose exec $(CONTAINER_NAME) chown -R node:node coverage
	$(MAKE) stop

test-all: up
	@docker-compose exec $(CONTAINER_NAME) npm run test:all
	$(MAKE) stop

eslint-check: up
	@docker-compose exec $(CONTAINER_NAME) npm run eslint:check || $(MAKE) stop
	${MAKE} stop
	
eslint-fix: up
	@docker-compose exec $(CONTAINER_NAME) npm run eslint:fix || $(MAKE) stop
	${MAKE} stop
