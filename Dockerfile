FROM mysql:8.0.17

ENV MYSQL_ROOT_PASSWORD=abcd1234

COPY init.sql /docker-entrypoint-initdb.d

EXPOSE 3306
