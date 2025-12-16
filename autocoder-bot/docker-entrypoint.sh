#!/bin/bash

chmod +x /app/docker-entrypoint.sh

echo "Starting the web service..."

# Add command to start the web server here
python app.py
