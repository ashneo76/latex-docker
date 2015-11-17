.PHONY: build

IMAGE_NAME="ashneo76/latex"
IMAGE_VERSION="latest"

build:
	docker build -t $(IMAGE_NAME):$(IMAGE_VERSION) .
