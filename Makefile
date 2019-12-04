IMAGE 	?= mccutchen/printenv
VERSION	?= $(shell git rev-parse --short HEAD)

TAG_COMMIT := $(IMAGE):$(VERSION)
TAG_LATEST := $(IMAGE):latest

build:
	docker build -t $(TAG_COMMIT) -t $(TAG_LATEST) .

push: build
	docker push $(TAG_COMMIT)
	docker push $(TAG_LATEST)

.PHONY: build push
