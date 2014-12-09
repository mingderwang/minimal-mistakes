#!/usr/bin/env bash
SRC_DIR=/Users/mwang/src/zone/61/log4analytics.com/minimal-mistakes/_site
DES_DIR=/Users/mwang/src/zone/61/log4analytics.com/mingderwang.github.io

echo '----------'
echo $SRC_DIR
echo '----------'
rsync -av --delete $SRC_DIR/* $DES_DIR 
cd $DES_DIR
git status 
git add .
echo '----------'
git status
git commit -m 'update contents'
git push
echo '----------'
echo $DES_DIR
echo '----------'
