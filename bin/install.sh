echo "install .vim"

path="$HOME/.vim"
mkdir -p $path

git clone https://github.com/YumaFuu/vim.git $path

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh "$path/dein"
rm ./installer.sh
