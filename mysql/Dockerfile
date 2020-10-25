FROM mysql:8.0

EXPOSE 3306

ADD init.sql /opt/init.sql
ADD init.sh /opt/init.sh

ENTRYPOINT /opt/init.sh
