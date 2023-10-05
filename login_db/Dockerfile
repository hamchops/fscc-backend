FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD root

COPY employee_login.sql /docker-entrypoint-initdb.d

COPY my.cnf /etc/mysql/conf.d/

EXPOSE 3307
