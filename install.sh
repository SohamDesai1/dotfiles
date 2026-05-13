#!/bin/bash

set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

mkdir -p "$HOME/.config"

ln -sf "$DOTFILES_DIR/.bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES_DIR/.bash_profile" "$HOME/.bash_profile"
ln -sf "$DOTFILES_DIR/.profile" "$HOME/.profile"
ln -sf "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"

ln -sf "$DOTFILES_DIR/config/hypr" "$HOME/.config/"
ln -sf "$DOTFILES_DIR/config/nvim" "$HOME/.config/"
ln -sf "$DOTFILES_DIR/config/fish" "$HOME/.config/"
ln -sf "$DOTFILES_DIR/config/kitty" "$HOME/.config/"
ln -sf "$DOTFILES_DIR/config/waybar" "$HOME/.config/"
ln -sf "$DOTFILES_DIR/config/wofi" "$HOME/.config/"
ln -sf "$DOTFILES_DIR/config/btop" "$HOME/.config/"
ln -sf "$DOTFILES_DIR/config/dolphinrc" "$HOME/.config/"


echo "Dotfiles installed successfully!"
