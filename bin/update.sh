#!/bin/sh
path="$HOME/.config/nvim"

cd $path
now=$(date "+%Y/%m/%d %H:%M:%S")

git add -A
git commit -m"updated at ${now}"
git push origin master
cd -
