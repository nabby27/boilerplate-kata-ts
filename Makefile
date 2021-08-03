CONTAINER_NAME=boilerplate_kata_ts

.PHONY: build
build:
	@docker-compose run --rm $(CONTAINER_NAME) npm run build

install:
	@docker-compose run --rm $(CONTAINER_NAME) npm install $(ARGS)

eslint-check:
	@docker-compose run --rm $(CONTAINER_NAME) npm run eslint:check
	
eslint-fix:
	@docker-compose run --rm $(CONTAINER_NAME) npm run eslint:fix

.PHONY: test
test:
	@docker-compose run --rm $(CONTAINER_NAME) npm run test

test-watch:
	@docker-compose run --rm $(CONTAINER_NAME) npm run test:watch
	$(MAKE) stop

test-watch-coverage:
	@docker-compose run --rm $(CONTAINER_NAME) npm run test:watch:coverage
	$(MAKE) stop

test-coverage:
	@docker-compose run --rm $(CONTAINER_NAME) npm run test:coverage
	@docker-compose run --rm $(CONTAINER_NAME) chown -R node:node coverage
	$(MAKE) stop

test-all:
	@docker-compose run --rm $(CONTAINER_NAME) npm run test:all
	$(MAKE) stop
