FROM python:3.7-alpine
MAINTAINER sinchuk140995@gmail.com

ENV PYTHONUNBUFFERED 1

RUN mkdir /app
WORKDIR /app
COPY . /app

RUN pip install -r /app/requirements.txt

RUN adduser -D django_user
USER django_user
