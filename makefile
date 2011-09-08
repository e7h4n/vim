install:
	ln -sf ~/.vim/vimrc ~/.vimrc
	ln -sf ~/.vim/gvimrc ~/.gvimrc
	git submodule init
	git submodule update
	[[ ! -e '~/.vimundodir' ]] || mkdir ~/.vimundodir

update:
	git submodule foreach 'git checkout master && git pull'
