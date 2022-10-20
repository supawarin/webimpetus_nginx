ARG TAG=latest

FROM 127.0.0.1:5100/webimpetus-server:$TAG

RUN apk update && apk upgrade \
     vim  \
     curl \
     jq \
     wget 
WORKDIR /var/www/html
COPY ./ci4 /var/www/html

COPY ./html/public/index.php /var/www/html/public/index.php

#RUN chown -R www-data:www-data /var/www/html

# RUN chmod 755 /var/www/html/

COPY ./devops/kube/config/php/php.ini /usr/local/etc/php/php.ini
COPY ./devops/kube/config/vhosts/default.conf /etc/nginx/sites-enabled/default.conf



# #COPY logs/nginx/* /var/log

