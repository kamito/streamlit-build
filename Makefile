.PHONY: build push

GCP_PROJECT_ID = blocks-gn-kamito
DOCKER_NAME = streamlit-healthz
DOCKER_TAG = 0.0.1
DOCKER_URL = gcr.io/$(GCP_PROJECT_ID)/$(DOCKER_NAME)

build:
	@echo "building docker image..."
	docker build -t $(DOCKER_URL):$(DOCKER_TAG) --no-cache .
	@echo "build docker image"

push:
	docker push $(DOCKER_URL):$(DOCKER_TAG)
