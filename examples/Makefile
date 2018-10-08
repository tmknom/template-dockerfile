.DEFAULT_GOAL := help

# https://gist.github.com/tadashi-aikawa/da73d277a3c1ec6767ed48d1335900f3
.PHONY: $(shell grep -E '^[a-zA-Z_-]+:' $(MAKEFILE_LIST) | sed 's/://')

# Macro definitions
define build_image
	cd $1 && \
	docker run --rm -i hadolint/hadolint < Dockerfile && \
	DOCKER_REPO=index.docker.io/example/$1 DOCKER_TAG=latest IMAGE_NAME=example/$1 ../../hooks/build && \
	docker images example/$1
endef


# Phony Targets
build-nodejs: ## Build docker image nodejs
	$(call build_image,nodejs)

build-golang: ## Build docker image golang
	$(call build_image,golang)

build-python: ## Build docker image python
	$(call build_image,python)

build-ruby: ## Build docker image ruby
	$(call build_image,ruby)


# https://postd.cc/auto-documented-makefile/
help: ## Show help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
