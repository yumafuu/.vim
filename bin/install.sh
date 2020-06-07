echo "install my nvim conf"

path="$HOME/.config/nvim"
mkdir -p $path && cd $NVIM

if [ $(uname) = "Darwin" ]; then
  brew install nvim
elif [ $(uname) = "Linux" ]; then
  apt-get update && apt-get install nvim
else
  exit 1
fi

git clone https://github.com/YumaFuu/nvim.git $path
