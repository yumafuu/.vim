#!bash

if [ $NVIM = "" ] ; then
  export $NVIM="/Users/`whoami`/.config/nvim"
fi

mkdir -p $NVIM
cd $NVIM
now=$(date "+%Y/%m/%d %H:%M:%S")

git add -A
git commit -m"updated at ${now}"
git push origin master
