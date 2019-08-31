#!/bin/bash


hexo clean
hexo g
hexo d 

git add .
git commit -m "default text"
git push --set-upstream origin master
