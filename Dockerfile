FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
COPY index.html /var/www/html/
COPY styles.css /var/www/html/
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
