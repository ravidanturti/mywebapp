FROM oraclelinux:8.3
MAINTAINER ashutoshh@linux.com
RUN dnf install httpd -y
COPY index.html /var/www/html/index.html
COPY abc.png /var/www/html/abc.png
EXPOSE 80
ENTRYPOINT httpd -DFOREGROUND
