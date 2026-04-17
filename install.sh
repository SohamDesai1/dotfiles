#!/bin/bash

set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

ln -sf "$DOTFILES_DIR/.bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES_DIR/.bash_profile" "$HOME/.bash_profile"
ln -sf "$DOTFILES_DIR/.profile" "$HOME/.profile"
ln -sf "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"

mkdir -p "$HOME/.config"
ln -sf "$DOTFILES_DIR/config/hypr" "$HOME/.config/hypr"
ln -sf "$DOTFILES_DIR/config/nvim" "$HOME/.config/nvim"
ln -sf "$DOTFILES_DIR/config/fish" "$HOME/.config/fish"
ln -sf "$DOTFILES_DIR/config/kitty" "$HOME/.config/kitty"
ln -sf "$DOTFILES_DIR/config/waybar" "$HOME/.config/waybar"
ln -sf "$DOTFILES_DIR/config/wofi" "$HOME/.config/wofi"
ln -sf "$DOTFILES_DIR/config/btop" "$HOME/.config/btop"
ln -sf "$DOTFILES_DIR/config/dolphinrc" "$HOME/.config/dolphinrc"


echo "Dotfiles installed successfully!"
