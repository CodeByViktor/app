# syntax=docker/dockerfile:1
FROM nginx:1.23.1-alpine

WORKDIR /var/www

COPY ./docker-conf/vhost.conf /etc/nginx/conf.d/default.conf

RUN ln -sf /dev/stdout /var/log/nginx/access.log \
	&& ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80