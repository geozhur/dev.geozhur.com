FROM nginx

COPY basics.conf.template /basics.conf.template
COPY maintenance.html /usr/src/app/www/maintenance.html

RUN \
  apt-get update \
  && apt-get -y install gettext-base \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT envsubst '$NGINX_SERVER_ADDRESS' < /basics.conf.template > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'
