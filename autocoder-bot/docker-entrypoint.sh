#!/bin/sh
chmod +x /app/docker-entrypoint.sh
echo 'Starting the web service...'
python app.py
