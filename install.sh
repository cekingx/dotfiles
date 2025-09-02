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

# Create symbolic link for nvim configuration
echo "Creating nvim configuration symlink..."
ln -sf "$PWD/nvim/" "$HOME/.config"

# Create symbolic link for dev script in /usr/local/bin
echo "Creating dev script symlink..."
if sudo ln -sf "$PWD/bash/dev" "/usr/local/bin/dev"; then
    echo "Dev script installed to /usr/local/bin/dev"
else
    echo "Warning: Could not create symlink in /usr/local/bin (requires sudo)"
fi

echo "Dotfiles installation complete!"
