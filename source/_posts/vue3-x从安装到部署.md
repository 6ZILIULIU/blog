---
title: vue3.x从安装到部署
date: 2019-09-03 19:50:19
tags: vue
---

## 首先需要安装node和npm
- 具体安装方法在菜鸟教程或官方网站有。

## 安装vue-cli3

1.全局安装淘宝镜像cnpm 
- npm install -g cnpm 

2. 全局安装vue脚手架
- cnpm install -g vue-cli
- cnpm install -g vue
- 安装完可能会出现版本太低(vue create myproject 命令只能vue-cli3才能使用，2.x用的是vue init webpack myproject)
![问题.png](vue3.x从安装到部署/安装vue.png)
![完成.png](vue3.x从安装到部署/安装完.png)

3. 创建一个vue项目 
- vue create myproject

4. 进入项目文件夹，运行
- cd myproject
- npm run serve

5. 打包部署到nginx上
- npm run build

## Vue Cli 打包之后静态资源路径不对的解决方法
---
打包完会生成dist文件夹，里面有打包完的静态资源文件，部署上服务器直接把这个文件夹复制到服务器根目录，然而这时我遇到个问题，css，js，图片都图读取不进来，找了网上的解决方案如下：

1. cli2版本：
- 将 config/index.js 里的 assetsPublicPath 的值改为 './' 。
```
build: {
     ...
     assetsPublicPath: './',
     ...  
}
```


2. cli3版本：
- 在根目录下新建 vue.config.js 文件，然后加上以下内容：（如果已经有此文件就直接修改）
```
module.exports = {
          publicPath: '', // 相对于 HTML 页面（目录相同）
}
```
