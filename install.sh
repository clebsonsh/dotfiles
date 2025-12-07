#!/usr/bin/bash

DOTFILES=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

rm -rf "$HOME"/.config/kitty
mkdir "$HOME"/.config/kitty
ln -rs "$DOTFILES"/config/kitty.conf "$HOME"/.config/kitty/kitty.conf

rm -rf "$HOME"/.config/lazygit
mkdir "$HOME"/.config/lazygit
ln -rs "$DOTFILES"/config/lazygit.yml "$HOME"/.config/lazygit/config.yml

rm -rf "$HOME"/.config/starship.toml
ln -s "$DOTFILES"/config/starship.toml "$HOME"/.config/starship.toml

rm -rf "$HOME"/.gitconfig
ln -s "$DOTFILES"/config/gitconfig "$HOME"/.gitconfig

rm -rf "$HOME"/.vimrc
ln -s "$DOTFILES"/config/vimrc "$HOME"/.vimrc

rm -rf "$HOME"/.bashrc
ln -s "$DOTFILES"/config/bashrc "$HOME"/.bashrc

rm -rf "$HOME"/.config/Code/User/settings.json
ln -s "$DOTFILES"/config/vscode.json "$HOME"/.config/Code/User/settings.json

code --install-extension adpyke.codesnap
code --install-extension bmewburn.vscode-intelephense-client
code --install-extension catppuccin.catppuccin-vsc
code --install-extension catppuccin.catppuccin-vsc-icons
code --install-extension ms-azuretools.vscode-containers
code --install-extension tobias-z.vscode-harpoon
code --install-extension vscodevim.vim
code --install-extension xdebug.php-debug
