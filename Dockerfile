# Pull base image.
FROM ubuntu:14.04

# Install MySQL.
RUN \
    sed -ri 's/archive\.ubuntu\.com/kr\.archive\.ubuntu\.com/g' /etc/apt/sources.list && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server-5.6 && \
    rm -rf /var/lib/apt/lists/*

COPY files/etc/mysql/conf.d/docker.cnf /etc/mysql/conf.d/docker.cnf

# Define mountable directories.
VOLUME ["/etc/mysql", "/var/lib/mysql", "/var/log/mysql", "/var/run/mysqld"]

# Define working directory.
WORKDIR /var/lib/mysql
