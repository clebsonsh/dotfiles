#!/usr/bin/bash

DOTFILES=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

rm -rf $HOME/.config/kitty
ln -s $DOTFILES/kitty $HOME/.config/kitty

rm -rf $HOME/.config/nvim
ln -s $DOTFILES/nvim $HOME/.config/nvim

rm -rf $HOME/.config/lazygit
ln -s $DOTFILES/nvim $HOME/.config/lazygit

rm -rf $HOME/.config/omp
ln -s $DOTFILES/omp $HOME/.config/omp
