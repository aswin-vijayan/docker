FROM mysql
ENV MYSQL_ROOT_PASSWORD=password
COPY my.cnf /etc/mysql/conf.d/my.cnf
RUN echo "[mysqld]" >> /etc/mysql/conf.d/my.cnf \
    && echo "character-set-server=utf8mb4" >> /etc/mysql/conf.d/my.cnf \
    && echo "collation-server=utf8mb4_unicode_ci" >> /etc/mysql/conf.d/my.cnf
EXPOSE 3306