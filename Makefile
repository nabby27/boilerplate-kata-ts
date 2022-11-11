CONTAINER_NAME=boilerplate_kata_ts

.PHONY: build
build:
	@docker compose run --rm $(CONTAINER_NAME) npm run build

install:
	@docker compose run --rm $(CONTAINER_NAME) npm install $(ARGS)

update:
	@docker compose run --rm $(CONTAINER_NAME) npm update

upgrade:
	@docker compose run --rm $(CONTAINER_NAME) npm upgrade

eslint/check:
	@docker compose run --rm $(CONTAINER_NAME) npm run eslint:check
	
eslint/fix:
	@docker compose run --rm $(CONTAINER_NAME) npm run eslint:fix

test/unit:
	@docker compose run --rm $(CONTAINER_NAME) npm run test:unit
	
test/unit/coverage:
	@docker compose run --rm $(CONTAINER_NAME) npm run test:unit:coverage
	@docker compose run --rm $(CONTAINER_NAME) chown -R node:node coverage

test/unit/watch:
	@docker compose run --rm $(CONTAINER_NAME) npm run test:unit:watch

test/unit/watch/coverage:
	@docker compose run --rm $(CONTAINER_NAME) npm run test:unit:watch:coverage
	@docker compose run --rm $(CONTAINER_NAME) chown -R node:node coverage

test/integration:
	@docker compose run --rm $(CONTAINER_NAME) npm run test:integration
	
test/integration/coverage:
	@docker compose run --rm $(CONTAINER_NAME) npm run test:integration:coverage
	@docker compose run --rm $(CONTAINER_NAME) chown -R node:node coverage

test/integration/watch:
	@docker compose run --rm $(CONTAINER_NAME) npm run test:integration:watch

test/integration/watch/coverage:
	@docker compose run --rm $(CONTAINER_NAME) npm run test:integration:watch:coverage
	@docker compose run --rm $(CONTAINER_NAME) chown -R node:node coverage

test/e2e:
	@docker compose run --rm $(CONTAINER_NAME) npm run test:e2e
	
test/e2e/coverage:
	@docker compose run --rm $(CONTAINER_NAME) npm run test:e2e:coverage
	@docker compose run --rm $(CONTAINER_NAME) chown -R node:node coverage

test/e2e/watch:
	@docker compose run --rm $(CONTAINER_NAME) npm run test:e2e:watch

test/e2e/watch/coverage:
	@docker compose run --rm $(CONTAINER_NAME) npm run test:e2e:watch:coverage
	@docker compose run --rm $(CONTAINER_NAME) chown -R node:node coverage

test/all:
	@docker compose run --rm $(CONTAINER_NAME) npm run test:all
	
test/all/coverage:
	@docker compose run --rm $(CONTAINER_NAME) npm run test:all:coverage
	@docker compose run --rm $(CONTAINER_NAME) chown -R node:node coverage

test/all/watch:
	@docker compose run --rm $(CONTAINER_NAME) npm run test:all:watch

test/all/watch/coverage:
	@docker compose run --rm $(CONTAINER_NAME) npm run test:all:watch:coverage
	@docker compose run --rm $(CONTAINER_NAME) chown -R node:node coverage