FROM centos:latest
MAINTAINER imraankhaan615@gmail.com
RUN yum install -y httpd \
 zip \
unzip
ADD https://www.free-css.com/free-css-templates/page280/klassy-cafe /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups/kindle/* .
RUN rm -rf __MACOSX markups-kindle kindle.zip
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
