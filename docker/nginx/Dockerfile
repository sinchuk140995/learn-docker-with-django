FROM nginx:1.15.8-alpine

ARG UNAME=nginx-user
ARG GNAME=nginx-group
ARG UID=1000
ARG GID=1000

COPY ./docker/nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./docker/nginx/app.conf /etc/nginx/conf.d/default.conf

RUN addgroup -g ${GID} ${GNAME} && \
    adduser -D -u ${UID} -G ${GNAME} ${UNAME}

RUN touch /var/run/nginx.pid && \
  chown -R ${UNAME}:${GNAME} /var/run/nginx.pid && \
  chown -R ${UNAME}:${GNAME} /var/cache/nginx

USER ${UNAME}
