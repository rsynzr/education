USE guacamole_db;

INSERT INTO guacamole_connection (connection_name, protocol, max_connections, max_connections_per_user)
VALUES ('Remote Laptop XRDP', 'rdp', 1, 1);
SET @connection_id = LAST_INSERT_ID();

INSERT INTO guacamole_connection_parameter (connection_id, parameter_name, parameter_value) VALUES
(@connection_id, 'hostname', 'xrdp-host'),
(@connection_id, 'port', '3389'),
(@connection_id, 'username', 'remote'),
(@connection_id, 'password', 'remotepass'),
(@connection_id, 'security', 'rdp'),
(@connection_id, 'ignore-cert', 'true'),
(@connection_id, 'enable-drive', 'true');
