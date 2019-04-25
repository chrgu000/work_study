### nginx与php-fpm通信的两种方式
#### tcp socket

tcp socket通信方式，需要在nginx配置文件中填写php-fpm运行的ip地址和端口号。

location ~ \.php$ {
    include fastcgi_params;
    fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;;
    fastcgi_pass 127.0.0.1:9000;
    fastcgi_index index.php;
}

#### unix socket

unix socket通信方式，需要在nginx配置文件中填写php-fpm运行的pid文件地址。

location ~ \.php$ {
    include fastcgi_params;
    fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;;
    fastcgi_pass unix:/var/run/php5-fpm.sock;
    fastcgi_index index.php;
}
