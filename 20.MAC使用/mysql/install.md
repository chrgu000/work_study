### mysql 安装
问题：Mysql 8.0版本的加密方式MySQL 5.x的不一样，连接报错

1.更改加密方式：

```
ALTER USER 'root'@'localhost' IDENTIFIED BY 'Yjj172679?' PASSWORD EXPIRE NEVER;
```


2.更改密码：

```
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Yjj172679?';
```


3.刷新权限：

```
FLUSH PRIVILEGES;
```


