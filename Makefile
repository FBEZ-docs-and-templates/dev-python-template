IMAGE_NAME ?= python-dev
CONTAINER_NAME ?= python-dev
VERSION ?= latest

.PHONY: build shell run stop rm 

build: Dockerfile
	docker build -t $(IMAGE_NAME):$(VERSION) -f Dockerfile .

