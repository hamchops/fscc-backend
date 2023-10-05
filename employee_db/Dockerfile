FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD root

COPY registered_employees.sql /docker-entrypoint-initdb.d

EXPOSE 3306