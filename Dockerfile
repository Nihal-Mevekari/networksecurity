FROM python:3.9-slim-buster
WORKDIR /app
COPY . /app

RUN apt-get update && apt install -y awscli

RUN apt-get update && pip install -r requirements.txt
CMD ["python3", "app.py"]