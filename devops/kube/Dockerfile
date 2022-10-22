ARG TAG=latest

FROM 127.0.0.1:5100/webimpetus-server:$TAG

RUN apk update && apk upgrade \
     vim  \
     curl \
     jq \
     wget 
WORKDIR /var/www/html
COPY ./ci4 /var/www/html

#COPY ./html/public/index.php /var/www/html/public/index.php

RUN chown -R www-data:root /var/www/html
RUN chmod -R 755 /var/www/html/ 

COPY ./devops/kube/config/php/php.ini /usr/local/etc/php/php.ini
COPY ./devops/kube/config/vhosts/default.conf /etc/nginx/sites-enabled/default.conf
COPY ./devops/kube/config/vhosts/nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

#RUN apk add supervisor
#COPY ./devops/docker/supervisord.conf /etc/

#CMD ["/usr/bin/supervisord", "-c" , " /etc/supervisord.conf"]
#CMD ["/bin/bash", "-c", "/usr/local/openresty/bin/openresty -g daemon off;", "php-fpm --nodaemonize"]
#CMD ["php-fpm", "--nodaemonize"]
#CMD ["/usr/local/openresty/bin/openresty", "-g", "daemon off;", "php-fpm --nodaemonize"]
# ENTRYPOINT /usr/bin/supervisord -c /etc/supervisord.conf
# # #COPY logs/nginx/* /var/log
# EXPOSE 80
