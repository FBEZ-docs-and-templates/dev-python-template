IMAGE_NAME ?= python-dev
CONTAINER_NAME ?= python-dev
VERSION ?= latest

.PHONY: build shell run stop rm 

build: Dockerfile
	docker build -t $(IMAGE_NAME):$(VERSION) -f Dockerfile .

run:
	docker run --rm --name $(CONTAINER_NAME) $(IMAGE_NAME):$(VERSION)

shell:
	docker run --rm --name $(CONTAINER_NAME) -i -t $(PORTS) $(VOLUMES) $(ENV) $(IMAGE_NAME):$(VERSION) /bin/bash

stop:
	docker stop $(CONTAINER_NAME)

rm:
	docker rm $(CONTAINER_NAME)
