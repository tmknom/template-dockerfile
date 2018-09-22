.DEFAULT_GOAL := help

# https://gist.github.com/tadashi-aikawa/da73d277a3c1ec6767ed48d1335900f3
.PHONY: $(shell grep -E '^[a-zA-Z_-]+:' $(MAKEFILE_LIST) | sed 's/://')


# Constant definitions
IMAGE_TAG := tmknom/template-dockerfile:latest

# Phony Targets
install: ## Install requirements
	@type docker >/dev/null 2>&1 || (echo "ERROR: docker not found (brew install docker)"; exit 1)
	docker pull hadolint/hadolint
	docker pull tmknom/markdownlint

build: ## Build docker
	docker build -t ${IMAGE_TAG} .
	docker images ${IMAGE_TAG}

lint: lint-markdown lint-dockerfile ## Lint dockerfile and markdown

lint-markdown:
	docker run --rm -i -v $(CURDIR):/work tmknom/markdownlint

lint-dockerfile:
	docker run --rm -i hadolint/hadolint < Dockerfile


# https://postd.cc/auto-documented-makefile/
help: ## Show help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
