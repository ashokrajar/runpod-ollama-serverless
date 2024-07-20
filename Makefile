IMAGE_NAME=ashokrajar/runpod-ollama-serverless
VERSION=latest

all: build push

build:
	docker build --platform linux/amd64 -t $(IMAGE_NAME):$(VERSION) .

push:
	docker push $(IMAGE_NAME):$(VERSION)
	