CREATE DATABASE IF NOT EXISTS guacamole_db DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS 'guacamole_user'@'%' IDENTIFIED BY 'guacamole_password';
GRANT ALL PRIVILEGES ON guacamole_db.* TO 'guacamole_user'@'%';
FLUSH PRIVILEGES;
