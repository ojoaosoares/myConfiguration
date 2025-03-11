#!/bin/sh

echo "Configurando...."

echo "Configurando bash"
cp .inputrc $HOME/
bind -f ~/.inputrc

echo "Configurando tmux"
cp .tmux.conf $HOME/
tmux source-file ~/.tmux.conf


echo "Configuração vim"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo apt-get install nodejs -y
sudo apt-get install npm -y
cp .vimrc $HOME/
vim -c "source ~/.vimrc" -c "qa"


