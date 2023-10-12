up: ## Docker compose up
	docker compose up -d --build; docker compose exec python_image poetry install
down: ## Docker compose down
	docker compose down --remove-orphans
shell: ## Shell into container
	docker compose exec python_image bash
test: ## Run static checks and tests
	docker compose exec python_image black src/ tests/;
	docker compose exec python_image isort src/ tests/;
	docker compose exec python_image flake8 src/ tests/;
	docker compose exec python_image python -m unittest discover tests


.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST)  | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help
