ln -sf ~/.vim/vimrc ~/.vimrc
ln -sf ~/.vim/gvimrc ~/.gvimrc
[[ ! -e '~/.vimundodir' ]] || mkdir ~/.vimundodir
[[ ! -e '~/.vim-fuf-data' ]] || makedir ~/.vim-fuf-data
git submodule update --init
