#!/bin/bash

# Set up XDG_CONFIG_HOME
export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"
mkdir -p "$XDG_CONFIG_HOME"/nixpkgs

# Create symlinks for existing configurations
ln -sf "$PWD/nvim" "$XDG_CONFIG_HOME"/nvim
ln -sf "$PWD/config.nix" "$XDG_CONFIG_HOME"/nixpkgs/config.nix

# Zsh configurations
curl -o "$HOME/.zshrc" https://raw.githubusercontent.com/nncm-xbc/dotfiles/main/.zshrc
curl -o "$HOME/.zprofile" https://raw.githubusercontent.com/nncm-xbc/dotfiles/main/.zprofile

# Install Nix packages from config.nix
nix-env -iA nixpkgs.myPackages
