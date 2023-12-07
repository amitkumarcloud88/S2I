FROM centos:7
RUN  yum -y  install  httpd
RUN  sed -i "s/Listen 80/Listen 9090/gi" /etc/httpd/conf/httpd.conf
COPY src/   /var/www/html
RUN  chown root:root  /var/run/httpd/  /var/log/httpd
RUN  chmod -R 777  /var/run/httpd   /var/log/httpd
EXPOSE 8080
USER   root
CMD ["/usr/sbin/httpd" ,"-D", "FOREGROUND"]  
