---
title: 如何安装个人博客框架hexo
date: 2019-08-27 08:07:40
tags: blog
---

---

- 安装nodejs
1. $ sudo git clone https://github.com/nodejs/node.git
2. $ sudo chmod -R 755 node
3. $ cd node
4. $ sudo ./configure
5. $ sudo make
6. $ sudo make install
7. $ node --version

- 安装cnpm （cnpm即淘宝做的国内镜像）
'npm install cnpm -g --registry=https://registry.npm.taobao.org'

- 安装hexo
cnpm install -g hexo-cli

- 基本操作
hexo n 创建新的博客 new
hexo s 启动（用于预览）server
hexo clean 清理
hexo g 生成 （生成静态文件）generate
hexo d 上传 可以上传到github上 
