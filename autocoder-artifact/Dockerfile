FROM python:3.9-slim AS build
WORKDIR /app
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

FROM python:3.9-slim
WORKDIR /app
COPY --from=build /app /app
COPY docker-entrypoint.sh /app/
RUN chmod +x docker-entrypoint.sh

CMD ["./docker-entrypoint.sh"]
