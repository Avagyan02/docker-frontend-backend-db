#!/bin/bash

COMPOSE_FILE="docker-compose.yml"
SERVICE_NAME="api"
NEW_BUILD_VALUE=$1

sed -i "s|^\s*image:.*|    image: $NEW_IMAGE|" "$COMPOSE_FILE"
