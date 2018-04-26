FROM nginx:1.13.6-alpine

RUN \
  apk add --no-cache \
  curl \
  nginx-mod-http-nchan

RUN mkdir -p /run/nginx

COPY nginx.conf /etc/nginx/nginx.conf
