FROM php:7.4-apache

# Update package information and install Apache
RUN apt-get update && \
    apt-get install -y apache2
    
COPY /Users/anjali/.jenkins/workspace/php-jenkins-ci /var/www/html
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
