#!/bin/bash

PROJECT_NAME="aab.core.background_worker"
IMAGE_NAME="aab.core.background_worker:latest"

cd "./../src/aab.core.background_worker" || exit

echo "Building Docker image..."
docker build -t "$IMAGE_NAME" .

echo "Saving Docker image to $IMAGE_TAR..."

IMAGE_TAR="../../deployment/$PROJECT_NAME.tar"
docker save -o "$IMAGE_TAR" "$IMAGE_NAME"

echo "Build and save completed successfully."
