rm -r ~/.vim
rm ~/.vimrc
git clone http://github.com/riobard/.vim  ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule init
git submodule update
