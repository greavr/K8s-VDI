FROM alpine

WORKDIR /data

ADD initdb.sql /data

RUN apk add mysql-client

CMD mysql -u $mysql_user -p$mysql_pwd -h $mysql_host $mysql_db < initdb.sql