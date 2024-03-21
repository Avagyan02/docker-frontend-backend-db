#!/bin/bash

compose_file="docker-compose.yml"
version=$(awk '/^version:/ { print $2 }' "$compose_file" | tr -d '"')

if [ ! -f "$compose_file" ]; then
    echo "File not found: $compose_file"
    exit 1
fi

if [ -z "$version" ]; then
    echo "Version not found in $compose_file"
    exit 1
fi

sed -i 's/^version:.*/version: "1"/' "$compose_file"
echo "Docker Compose file version updated to 1 in $compose_file"
