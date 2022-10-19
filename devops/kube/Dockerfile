FROM 127.0.0.1:5100/webimpetus-server:latest

RUN apk update && apk upgrade \
     vim  \
     curl \
     jq \
     wget 

COPY ci4 /var/www/html

COPY config/php/php.ini /usr/local/etc/php

COPY config/vhosts/default.conf /etc/nginx2/sites-enabled/default.conf

COPY logs/nginx2/* /var/log

