### nginx 安装

brew install nginx

启动、重启、停止命令：

sudo nginx
sudo nginx -s reload
sudo nginx -s stop

nginx默认端口是8080，启动nginx后，在浏览器下输入
localhost:8080
就可以看到nginx的欢迎界面。

#配置文件路径
/usr/local/etc/nginx/nginx.conf

### memcached
/usr/local/bin/memcached -m 64 -p 11211 -u memcache -l 127.0.0.1

### php安装
brew install php

/usr/local/bin/php -v 7.3.4 软链地址

/usr/local/bin/php -m 安装的模块

和brew安装的php对应的php-fpm位置位于：/usr/local/sbin/php-fpm

只要启动命令：/usr/local/sbin/php-fpm &

修改fpm监听的端口

vim /usr/local/etc/php/7.3/php-fpm.d/www.conf

listen = 127.0.0.1:9000 改为 listen = 127.0.0.1:9001

启动php-fpm
sudo php-fpm
结束php-fpm
sudo pkill php-fpm

### php 7.1
/usr/local/opt/php71/bin/php -v
/usr/local/opt/php71/bin/php -m
/usr/local/opt/php71/sbin/php-fpm -v


vim /usr/local/etc/php/7.1/php-fpm.d/www.conf
安装memcached
homebrew/php/php71-memcached

sudo /usr/local/opt/php71/sbin/php71-fpm start

### php5.6 低版本安装
http://newsn.com.cn/say/brew-php-classic.html
https://github.com/newsn/homebrew-php-classic

sudo /usr/local/opt/php56/sbin/php56-fpm start

sudo /usr/local/sbin/php-fpm -D  //开启php-fpm 注意用户权限

低版本安装
/usr/local/Homebrew/Library/Taps/homebrew/  

### PECL、PEAR、phpize、composer 的区别和联系

### mysql安装

brew install mysql



安装好之后，执行mysql.server start

mysql -u root -p
输入密码 Yjj172679?
进入mysql  select version(): // 8.0.15

问题：Mysql 8.0版本的加密方式MySQL 5.x的不一样，连接报错
vim /usr/local/etc/my.cnf
新增这个-laravel pdo 连接mysql报错 密码加密方式不一样-加如下默认配置即可
default_authentication_plugin=mysql_native_password

1.更改加密方式：

```
ALTER USER 'root'@'localhost' IDENTIFIED BY 'Yjj172679?' PASSWORD EXPIRE NEVER;
```


2.更改密码：

```
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Yjj172679?';
```

CREATE USER 'yjj'@'%' IDENTIFIED WITH mysql_native_password by 'Yjj172679?aa';

GRANT ALL PRIVILEGES ON *.* TO 'mzmw'@'%' IDENTIFIED BY 'Yjj172679?aa' WITH GRANT OPTION;

GRANT ALL PRIVILEGES ON laravel_api.* TO 'mzmw'@'%' IDENTIFIED BY 'Yjj172679?aa' WITH GRANT OPTION;
3.刷新权限：

```
FLUSH PRIVILEGES;
```

CREATE TABLE `tb_user_loan_order_repayment_period` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
}


安装扩展
/usr/lib/php/extensions/no-debug-non-zts-20160303/token_crypt.so

extension = /usr/local/Cellar/php56/5.6.33_9/include/php/token_crypt.so
自定义扩展
下载-解压-进入目录
sudo /usr/local/opt/php56/bin/phpize
./configure --prefix=/usr/local/Cellar/php56-tokenencrypt/1.0.3 --with-php-config=/usr/local/opt/php56/bin/php-config
sudo ./configure --with-php-config=/usr/local/opt/php56/bin/php-config
sudo make
sudo make install