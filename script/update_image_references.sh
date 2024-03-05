#!/bin/bash

# Update the image references in YAML files for multiple services
for file in ~/kube/kubernetes-manifests/*.yaml; do
    # Use envsubst to replace variables in the file
    envsubst < "$file" > "$file.tmp" && mv "$file.tmp" "$file"
done
