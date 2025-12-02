-- 授予用户远程访问权限
-- 修改用户权限（允许任意IP连接）
UPDATE mysql.user SET host='%' WHERE user='root';
FLUSH PRIVILEGES;


-- 注意：生产环境建议替换 % 为具体 IP（如 '192.168.8.134'）以增强安全性
-- 通过 GRANT 授权，此方法更安全，可限制仅允许特定 IP 连接
-- GRANT ALL PRIVILEGES ON *.* TO 'root'@'192.168.8.134' IDENTIFIED BY '密码' WITH GRANT OPTION;
-- FLUSH PRIVILEGES;