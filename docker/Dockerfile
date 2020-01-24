FROM mysql:5.6
LABEL maintainer="nkyokesh25@gmail.com"
ENV REFRESHED_AT 2020-24-01

## List all packages that we want to install
ENV PACKAGE percona-xtrabackup-23
##ENV MYSQL_ROOT_PASSWORD test
 
# Install requirement (wget)
RUN apt-get update && apt-get install -y wget
 
# Install Percona apt repository and Percona Xtrabackup
RUN wget https://repo.percona.com/apt/percona-release_0.1-3.jessie_all.deb && \
    dpkg -i percona-release_0.1-3.jessie_all.deb && \
    apt-get update && \
    apt-get install -y $PACKAGE
 
# Create the backup destination
RUN mkdir -p /backup/xtrabackups
 
# Allow mountable backup path
VOLUME ["/backup/xtrabackup"]

EXPOSE 3306

MKDIR /opt/mysqldb/

CMD ["mysql -uroot -p root < /opt/mysqldb/createdb.sql"]
