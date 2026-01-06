GITHUB_SHA?=latest
BUILD_ARGS?=

build:
	GITHUB_SHA=$(GITHUB_SHA) \
	docker-compose \
		-f docker-compose.prod.yml \
		build \
		$(BUILD_ARGS)

push:
	GITHUB_SHA=$(GITHUB_SHA) \
	docker-compose \
		-f docker-compose.prod.yml \
		push
