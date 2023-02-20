FROM python:3.11-slim-bullseye

ADD https://github.com/docker/compose/releases/download/v2.16.0/docker-compose-linux-x86_64 /usr/local/bin/docker-compose
RUN chmod 755 /usr/local/bin/docker-compose

WORKDIR /app

COPY requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

COPY ./src /app

ENV PORT=8080
CMD ["gunicorn", "-w", "4", "app:app"]
