FROM amazonlinux

RUN yum -y update
RUN yum install -y httpd
RUN yum install -y php

COPY ./index.php /var/www/html/index.php

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

EXPOSE 80
