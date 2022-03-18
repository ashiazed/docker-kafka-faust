.PHONY: build

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

build: ## Build the Docker image
	docker-compose -p stream_app build

up: build ## Bring the container up
	docker-compose -p stream_app up -d

down: ## Stop the container
	docker-compose -p stream_app stop

enter: ## Enter the running container
	docker-compose -p stream_app exec backend /bin/bash

clean: down ## Remove stoped containers
	docker-compose -p stream_app rm -f
