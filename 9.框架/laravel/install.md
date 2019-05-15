### lavavel安装
#### composer安装
composer create-project --prefer-dist laravel/laravel blog
在当前目录创建一个blog的目录-里面为最新版的laravel项目

#### Nginx配置
server {
    listen       80;
    server_name  www.laravel_api.com;
    root         /Users/liminlimin/laravel/blog/public/;
    index index.php;
    error_page 500 502 503 504 /50x.html;
    access_log  /usr/local/var/log/nginx/access.log  main;
    location = /50x.html {
        root html;
    }
    location / {
        rewrite ^(.*)$ /index.php/$1 last;        
    }
    location ~ ^(.+\.php)(.*)$ {
        alias /Users/liminlimin/laravel/blog/public/;
        fastcgi_pass 127.0.0.1:9073;
        fastcgi_index index.php;
        fastcgi_read_timeout 9999999999;
        fastcgi_split_path_info ^(.+\.php)(.*)$;
        fastcgi_param PATH_INFO $fastcgi_path_info;
        fastcgi_param PATH_TRANSLATED $DOCUMENT_ROOT$fastcgi_path_info;
        fastcgi_param SCRIPT_FILENAME $DOCUMENT_ROOT/$fastcgi_script_name;
        include fastcgi_params;   
    }
}
### 浅析 Laravel 官方文档推荐的 Nginx 配置
https://learnku.com/articles/25861
#### storage 目录写权限
chmod -R 777 storage
