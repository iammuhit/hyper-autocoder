FROM python:3.9-slim as builder
WORKDIR /app
COPY . .
RUN pip install --upgrade pip && pip install -r requirements.txt

FROM python:3.9-slim as final
WORKDIR /app
COPY --from=builder /app /app

EXPOSE 8000
CMD ["/bin/bash", "docker-entrypoint.sh"]
