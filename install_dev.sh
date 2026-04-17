#!/bin/bash

set -e

echo "Installing dev tools and essentials..."

sudo pacman -Syu --needed \
    git \
    rust \
    nodejs \
    python \
    go \
    docker \
    lazygit \
    fzf \
    ripgrep \
    fd \
    bat \
    eza \
    starship \
    zoxide \
    bottom \
    duf \
    tldr \
    httpie \
    curl \
    wget \
    tmux \
    neovim \
    code \
    firefox \
    brave-bin \
    discord \
    obs-studio \
    ffmpeg \
    mpv \
    yt-dlp \
    grim \
    slurp \
    wl-clipboard \
    brightnessctl \
    playerctl \
    pamixer \
    pavucontrol \
    rofi \
    wofi \
    dmenu \
    dunst \
    libnotify \
    gtk3 \
    gtk4 \
    qt5-base \
    qt6-base \
    picom \
    polybar \
    waybar \
    hyprland \
    starship

echo "Dev tools installed!"