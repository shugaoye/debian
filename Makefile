DOCKER = docker
IMAGE = shugaoye/ubuntu:latest

dev: Dockerfile
	$(DOCKER) build -t $(IMAGE) .

test:
	./run_image.sh $(IMAGE)

all: dev

.PHONY: all
