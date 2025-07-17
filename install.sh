#!/usr/bin/bash

DOTFILES=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

rm -rf "$HOME"/.config/kitty
ln -s "$DOTFILES"/kitty "$HOME"/.config/kitty

rm -rf "$HOME"/.config/nvim
ln -s "$DOTFILES"/nvim "$HOME"/.config/nvim

rm -rf "$HOME"/.config/lazygit
ln -s "$DOTFILES"/lazygit "$HOME"/.config/lazygit

rm -rf "$HOME"/.config/kanata
ln -s "$DOTFILES"/kanata "$HOME"/.config/kanata

rm -rf "$HOME"/.config/monitors.xml
ln -s "$DOTFILES"/misc/monitors.xml "$HOME"/.config/monitors.xml

rm -rf "$HOME"/.config/starship.toml
ln -s "$DOTFILES"/misc/starship.toml "$HOME"/.config/starship.toml

rm -rf "$HOME"/.gitconfig
ln -s "$DOTFILES"/misc/gitconfig "$HOME"/.gitconfig

rm -rf "$HOME"/.ideavimrc
ln -s "$DOTFILES"/misc/ideavimrc "$HOME"/.ideavimrc

rm -rf "$HOME"/.vimrc
ln -s "$DOTFILES"/misc/vimrc "$HOME"/.vimrc

rm -rf "$HOME"/.bashrc
ln -s "$DOTFILES"/misc/bashrc "$HOME"/.bashrc
