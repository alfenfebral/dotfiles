#!/bin/sh

echo "Creating symbolic links for dotfiles..."

ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/sh ~/sh
ln -s ~/dotfiles/.config/rofi ~/.config/rofi
ln -s ~/dotfiles/.config/regolith2 ~/.config/regolith2
ln -s ~/dotfiles/.config/nvim/lua/custom ~/.config/nvim/lua/custom

echo "done"
