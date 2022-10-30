#!/bin/sh

echo "Creating symbolic links for dotfiles..."
ln -s ./.tmux.conf ~/.tmux.conf
ln -s ./.gitconfig ~/.gitconfig
ln -s ./.zshrc ~/.zshrc
ln -s ./sh ~/sh
ln -s ./.config/rofi ~/.config/rofi
ln -s ./.config/regolith2 ~/.config/regolith2
ln -s ./.config/nvim/lua/custom ~/.config/nvim/lua/custom

echo "done"
