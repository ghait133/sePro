###
###
###

### GET PARSED VARs FROM docker-compose.yml
#ARG image_name
#ARG image_version

FROM mysql:5.7

#MAINTAINER reboucas@mogic.com

#Backup
COPY backup.sql /usr/bin

#Restore Data
#CMD cat /usr/bin/backup.sql | /usr/bin/mysql -u root --password=secret homestead

### Copy the mySQL configuration
COPY conf.d /etc/mysql/mysql.conf.d/mysqld.cnf

#RUN mkdir -vp /db_dumps
#RUN chmod -R 755 /db_dumps

#EXPOSE 3306











