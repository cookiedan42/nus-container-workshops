
docker run --name mysql-volmount -d -p 3306:3306 \
  -e MYSQL_ROOT_PASSWORD=abc123 \
  --mount type=volume,src=mysql-vol,dst=/var/lib/mysql \
  mysql:8
