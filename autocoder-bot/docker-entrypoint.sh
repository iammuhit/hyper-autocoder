#!/bin/sh

chmod +x /app/docker-entrypoint.sh

echo "Starting the Python web service..."

exec "$@"
