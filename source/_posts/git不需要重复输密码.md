---
title: git不需要重复输密码
date: 2019-08-26 15:55:05
tags: git 
---

在root目录下，touch创建文件 .git-credentials

- 'touch .git-credentials'

用vim编辑此文件

- 输出以下格式http://username:passwd@github.com
 
1. git push --global credential.helper store
2. 再次push上传，输一次密码就会保存
