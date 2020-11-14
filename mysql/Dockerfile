FROM mysql:8.0

ADD my.cnf /etc/mysql/my.cnf
ADD init.sql /docker-entrypoint-initdb.d/init.sql

EXPOSE 13306
