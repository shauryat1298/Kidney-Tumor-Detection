FROM python:3.8-slim-buster

RUN apt update -y && apt install awscli 0y
WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt

CMD [ "python", "app.py" ]