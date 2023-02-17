FROM centos:latest
RUN yum install httpd zip unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page287/cakezone.zip /var/www/html
WORKDIR /var/www/html
RUN unzip cakezone.zip
RUN rm -rf cakezone.zip 
RUN mv */* .
EXPOSE 80
CMD ["/usr/sbin/httpd", "D", "FOREGROUND"]
