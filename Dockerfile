FROM centos:latest
RUN  yum -y  install  httpd
RUN  sed -i "s/Listen 80/Listen 8080/g" /etc/httpd/conf/httpd.conf
COPY src/   /var/www/html
RUN  chown apache:apache  /var/run/httpd/  /var/log/httpd
RUN  chmod -R 777  /var/run/httpd   /var/log/httpd
EXPOSE 8080
USER   root
CMD ['/usr/sbin/httpd", "-D", "FOREGROUND"]  
