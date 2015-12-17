# Pull base image.
FROM busybox

# Define mountable directories.
VOLUME ["/etc/mysql", "/var/lib/mysql", "/var/log/mysql", "/var/run/mysqld"]

# Define working directory.
WORKDIR /var/lib/mysql
