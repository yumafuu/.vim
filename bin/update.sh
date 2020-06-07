#!bash

if [ $NVIM = "" ] ; then
  export $NVIM=/Users/yuma/.config/nvim
fi

cd $NVIM
now=$(date "+%Y/%m/%d %H:%M:%S")

git add -A
git commit -m"updated at ${now}"
git push origin master
