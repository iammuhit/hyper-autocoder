#!/bin/sh

chmod +x /app/docker-entrypoint.sh

echo 'Starting web service...'

exec "$@"
