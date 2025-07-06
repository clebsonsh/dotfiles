#!/usr/bin/bash

DOTFILES=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

rm -rf $HOME/.config/kitty
ln -s $DOTFILES/kitty $HOME/.config/kitty

rm -rf $HOME/.config/nvim
ln -s $DOTFILES/nvim $HOME/.config/nvim

rm -rf $HOME/.config/lazygit
ln -s $DOTFILES/lazygit $HOME/.config/lazygit

rm -rf $HOME/.config/omp
ln -s $DOTFILES/omp $HOME/.config/omp

rm -rf $HOME/.config/kanata
ln -s $DOTFILES/kanata $HOME/.config/kanata
