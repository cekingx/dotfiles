#!/bin/bash

# Dotfiles installation script

echo "Installing dotfiles..."

# Install tmux configuration using stow
echo "Installing tmux configuration..."
stow -t ~ tmux

# Source tmux configuration if tmux is running
if pgrep -x "tmux" > /dev/null; then
    echo "Sourcing tmux configuration..."
    tmux source-file "$HOME/.config/tmux/tmux.conf"
fi

# Install nvim configuration using stow
echo "Installing nvim configuration..."
stow -t ~ nvim

# Install i3 configuration using stow
echo "Installing i3 configuration..."
stow -t ~ i3

# Install polybar configuration using stow
echo "Installing polybar configuration..."
stow -t ~ polybar

echo "Dotfiles installation complete!"
