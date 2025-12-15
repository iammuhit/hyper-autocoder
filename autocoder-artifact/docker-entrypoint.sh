#!/bin/bash
chmod +x /app/docker-entrypoint.sh
echo 'Starting the web server'
exec python app.py
