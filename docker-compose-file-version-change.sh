#!/bin/bash

compose_file="docker-compose.yml"
current_version=$(awk '/^version:/ { print $2 }' "$compose_file" | tr -d '"')

if [ ! -f "$compose_file" ]; then
    echo "File not found: $compose_file"
    exit 1
fi

if [ -z "$current_version" ]; then
    echo "Version not found in $compose_file"
    exit 1
fi

new_version=$(echo "$current_version + 0.1" | /usr/bin/bc)
sed -i "s/^version:.*/version: \"$new_version\"/" "$compose_file"
echo "Docker Compose file version updated to 1 in $compose_file"
