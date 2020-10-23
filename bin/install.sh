echo "install .vim"

path="$HOME/.vim"
mkdir -p $path

# todo
# install nvim & python3
# brew install nvim

git clone https://github.com/YumaFuu/nvim.git $path

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh "$path/dein"
rm ./installer.sh
