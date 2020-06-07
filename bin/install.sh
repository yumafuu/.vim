echo "install my nvim conf"

path="$HOME/.config/nvim"
mkdir -p $path && cd $NVIM

# todo
# install dependencies

git clone https://github.com/YumaFuu/nvim.git $path
