echo "install my nvim conf"

path="/Users/`whoami`/.config/nvim"
mkdir -p $path && cd $NVIM

git clone https://github.com/YumaFuu/nvim.git
