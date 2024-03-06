#!/bin/bash

# Define Docker registry credentials
DOCKER_SERVER="eshopimages.azurecr.io"
DOCKER_USERNAME="eshopimages"
DOCKER_PASSWORD="jvOvtdM20HNanYNgRO4G3TP7hACQX3454/GaQ0icWR+ACRAMue0q"

# Check if the secret already exists
if kubectl get secret acr-secret >/dev/null 2>&1; then
    echo "Secret acr-secret already exists. Skipping creation."
    exit 0
fi

# Create Docker registry secret
kubectl create secret docker-registry acr-secret \
    --docker-server="$DOCKER_SERVER" \
    --docker-username="$DOCKER_USERNAME" \
    --docker-password="$DOCKER_PASSWORD"
