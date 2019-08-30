.PHONY: build login push pull

USER = kpango

IMAGE_NAME = ${USER}/rust-musl-builder

build:
	docker build --squash --network=host -t ${IMAGE_NAME}:latest -f ./Dockerfile .

login:
	docker login -u ${USER}

push:
	docker push ${IMAGE_NAME}:latest

pull:
	docker pull ${IMAGE_NAME}:latest
