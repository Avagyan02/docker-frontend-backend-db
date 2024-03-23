#!/bin/bash

COMPOSE_FILE="docker-compose.yml"
SERVICE_NAME="web"
NEW_BUILD_VALUE=$1

sed -i "/^\s*$SERVICE_NAME:/{:a;n;/^\s*build:/s|^\s*build:.*|    build: $NEW_BUILD_VALUE|;Ta}" "$COMPOSE_FILE"
