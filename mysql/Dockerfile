FROM mysql:5.6

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=shop
ENV MYSQL_USER=testuser
ENV MYSQL_PASSWORD=password

RUN mkdir /script
COPY script/database.sql /script/
COPY script/insert.sql /script/


