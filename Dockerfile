FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y nginx

RUN mkdir -p /tmp/nginx/cache/thumb
RUN \
  chown -R www-data:www-data /var/lib/nginx && \
  rm /etc/nginx/sites-enabled/default

ADD nginx/enda-static.conf /etc/nginx/sites-enabled

CMD ["/usr/sbin/nginx"]
EXPOSE 80
