#!/bin/sh
set -e

echo "Menunggu MariaDB..."
until mysql -hmariadb -uroot -pexample_root_password -e 'SELECT 1' >/dev/null 2>&1; do
  sleep 2
done

echo "Memulai inisialisasi Guacamole DB..."
mysql -hmariadb -uroot -pexample_root_password < /init/000-init-guacamole.sql
mysql -hmariadb -uroot -pexample_root_password guacamole_db < /init/001-create-schema.sql
mysql -hmariadb -uroot -pexample_root_password guacamole_db < /init/002-create-admin-user.sql
mysql -hmariadb -uroot -pexample_root_password guacamole_db < /init/003-create-connection.sql

echo "Inisialisasi Guacamole selesai."
