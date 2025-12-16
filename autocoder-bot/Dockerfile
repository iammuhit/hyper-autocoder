FROM python:3.8-slim

WORKDIR /app
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Run the application
CMD ["./docker-entrypoint.sh"]
