FROM mysql/mysql-server:latest
MAINTAINER Prashant Padmanabhan <prashant.pro@gmail.com>

EXPOSE 3306

ENV MYSQL_USER=prashantp
ENV MYSQL_PASSWORD=zerocool
ENV MYSQL_DATABASE=nokos
ENV MYSQL_ROOT_PASSWORD=secret

VOLUME /var/lib/mysql:/var/lib/mysql

RUN chown -R mysql:mysql /var/lib/mysql

