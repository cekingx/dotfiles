#!/bin/bash

# Dotfiles installation script

echo "Installing dotfiles..."

# Create .config/tmux directory if it doesn't exist
if [ ! -d "$HOME/.config/tmux" ]; then
    echo "Creating ~/.config/tmux directory..."
    mkdir -p "$HOME/.config/tmux"
fi

# Create symbolic link for tmux configuration
echo "Creating tmux configuration symlink..."
ln -sf "$PWD/tmux/tmux.conf" "$HOME/.config/tmux/tmux.conf"

# Source tmux configuration if tmux is running
if pgrep -x "tmux" > /dev/null; then
    echo "Sourcing tmux configuration..."
    tmux source-file "$HOME/.config/tmux/tmux.conf"
fi

echo "Dotfiles installation complete!"
