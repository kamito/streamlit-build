#!/bin/bash

GCP_PROJECT_ID="blocks-gn-kamito"
DOCKER_NAME="streamlit-healthz"
DOCKER_TAG="0.0.1"
DOCKER_URL="gcr.io/${GCP_PROJECT_ID}/${DOCKER_NAME}"

# docker run --name build-streanlit -it --rm $DOCKER_URL:$DOCKER_TAG ls -la
docker run --name build-streanlit -it --rm $DOCKER_URL:$DOCKER_TAG /bin/bash ./package.sh
