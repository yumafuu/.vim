echo "install my nvim conf"

if [ $NVIM = "" ] ; then
  export NVIM="/Users/`whoami`/.config/nvim"
fi

mkdir -p $NVIM && cd $NVIM
git clone https://github.com/YumaFuu/nvim.git
