---
title:  web服务搭建--debian环境
date: 2019-08-26 13:04:53
tags: web

---

## 1. 安装nginx+php+php7.0-fpm+mariadb
```
apt-get install nginx php php-fpm mariadb-server
```

## 2. 开启和开机启动服务
```
  systemctl start nginx.service mariadb.service php7.0-fpm.service 
  systemctl enable nginx.service mariadb.service php7.0-fpm.service 
```

## 3. 配置cgi和pathinfo模式
```
  location ~ \.php {
       #cgi配置
       root    /var/www/html;
       fastcgi_pass 127.0.0.1:9000;
       #/var/run/php/php7.*-fpm.sock 可以添加上面那条从而使用
       fastcgi_index index.php;
       include fastcgi_params;
       include fastcgi.conf;
       #pathinfo模式
       fastcgi_split_path_info ^(.+\.php)(/.*)$; 
       fastcgi_param PATH_INFO $fastcgi_path_info;
   }
```
