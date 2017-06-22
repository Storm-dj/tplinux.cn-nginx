#!/bin/sh
docker run --name my-custom-nginx-container \
  -v `pwd`/conf/nginx.conf:/etc/nginx/nginx.conf:ro \
  -v `pwd`/html:/etc/nginx/html \
  -v `pwd`/sbin:/etc/nginx/sbin \
  -v `pwd`/static:/etc/nginx/static \
  -v `pwd`/logs:/etc/nginx/logs \
  -p 80:80 \
  -d nginx
