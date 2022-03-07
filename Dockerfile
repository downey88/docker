# using Amazon Linux 2
FROM public.ecr.aws/amazonlinux/amazonlinux:2

# install dependencies
RUN yum install -y \
curl \
httpd \
php \
&& ln -s /usr/sbin/httpd /usr/sbin/apache2

# install app
RUN rm -rf /var/www/html/* && mkdir -p /var/www/html

# adding source code after 'ADD'
# ADD <source code directory path>

# configure Apache2
RUN chown -R apache:apache /var/www
ENV APACHE_RUN_USER apache
ENV APACHE_RUN_GROUP apache
ENV APACHE_LOG_DIR /var/log/apache2

# adding container port to 80
EXPOSE 80

# running webserver
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
