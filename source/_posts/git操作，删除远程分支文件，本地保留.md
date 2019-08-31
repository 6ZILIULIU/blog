---
title: git操作，删除远程分支文件，本地保留
date: 2019-08-31 23:45:20
tags: git
---

git rm -r --cached mypay(文件名或者文件夹名)

git commit -m"注释"

git push 这样远程仓库的文件就删除了，本地的保留

同时在.gitignore中设置过滤（重要）
