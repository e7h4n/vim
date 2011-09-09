install:
	ln -sf ~/.vim/vimrc ~/.vimrc
	ln -sf ~/.vim/gvimrc ~/.gvimrc
	git submodule init
	git submodule update
	[[ ! -e '~/.vimundodir' ]] || mkdir ~/.vimundodir
	[[ ! -e '~/.vim-fuf-data' ]] || makedir ~/.vim-fuf-data

update:
	git submodule foreach 'git checkout master && git pull'
