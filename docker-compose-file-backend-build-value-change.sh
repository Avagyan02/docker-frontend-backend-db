#!/bin/bash

COMPOSE_FILE="docker-compose.yml"
SERVICE_NAME="api"
NEW_BUILD_VALUE=$1

sed -i "/^\s*$SERVICE_NAME:/{:a;n;/^\s*image:/s|^\s*image:.*|    image: $NEW_BUILD_VALUE|;Ta}" "$COMPOSE_FILE"