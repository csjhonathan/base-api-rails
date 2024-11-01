rails_container="base-api-rails-web-1"

.PHONY: start
start: 
	@docker compose up --remove-orphans $(options)

.PHONY: start-dev
start-dev: 
	@docker compose -f docker-compose.dev.yml up -d --remove-orphans $(options)

.PHONY: start-prod
start-prod: 
	@docker compose -f docker-compose.prod.yml up -d --remove-orphans $(options)

.PHONY: exec
exec: 
	@docker exec -it $(service) $(cmd)

# Rails commands

.PHONY: bash
bash: 
	@$(MAKE) exec service="$(rails_container)" cmd="bash"

.PHONY: console
console: 
	@$(MAKE) exec service="$(rails_container)" cmd="rails c"

.PHONY: migrate
migrate: 
	@$(MAKE) exec service="$(rails_container)" cmd="rails db:migrate"

.PHONY: seed
seed: 
	@$(MAKE) exec service="$(rails_container)" cmd="rails db:seed"

# Build commands 

.PHONY: build
build: 
	@$(MAKE) start options="--build" 

.PHONY: build-dev
build-dev: 
	@$(MAKE) start-dev options="--build" 

.PHONY: build-prod
build-prod: 
	@$(MAKE) start-prod options="--build"