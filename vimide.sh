if [ "$EUID" -eq 0 ]
    then echo "must not run as root"
        exit
fi

echo "==================> Downloading pathogen bundler for vim"
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "==================> Downloading Nerdtree "
if [ ! -d ~/.vim/bundle/nerdtree ]; then
    git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree
fi

echo "==================> Creating .vimrc with customization"
cp  vimrc ${HOME}/.vimrc
