#!/bin/sh
VIM_PLUG="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

install() {
  DOTFILES=$(readlink -f $(dirname $0))
  ln -svf $DOTFILES/$1 ~/$1
}

mkdir -p ~/.config/i3status
mkdir -p ~/.config/i3
mkdir -p ~/.config/nvim/autoload
mkdir -p ~/.config/termite
mkdir -p ~/.config/fish/completions

curl -#fL $VIM_PLUG > ~/.config/nvim/autoload/plug.vim

install .tmux.conf
install .zshrc
install .config/nvim/init.vim
install .config/i3status/config
install .config/i3/config
install .xinitrc
install .Xresources
install .config/weston.ini
install .config/termite/config
install .config/chromium-flags.conf
