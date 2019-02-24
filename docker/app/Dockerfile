FROM python:3.6-alpine
MAINTAINER sinchuk140995@gmail.com

ARG UNAME=app-user
ARG GNAME=app-group
ARG UID=1000
ARG GID=1000

ENV PYTHONUNBUFFERED 1

RUN mkdir /app
WORKDIR /app
COPY . /app

RUN apk update \
  && apk add --virtual build-deps gcc python3-dev musl-dev \
  && apk add postgresql-dev \
  && pip install -r requirements.txt \
  && apk del build-deps

RUN addgroup -g ${GID} ${GNAME} && \
    adduser -D -u ${UID} -G ${GNAME} ${UNAME}
USER ${UNAME}
