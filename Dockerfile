FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y nginx-extras

RUN \
  chown -R www-data:www-data /var/lib/nginx && \
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
  rm /etc/nginx/sites-enabled/default

ADD nginx/enda-static.conf /etc/nginx/sites-enabled
VOLUME /var/www/uploads/enda

CMD ["/usr/sbin/nginx"]
EXPOSE 80 443
