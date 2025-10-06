# Dotfiles

A centralized configuration repository for my terminal-based workflow.

## Overview

This repository contains configuration files for various terminal tools and applications to maintain a consistent development environment across different systems.

## Structure

```
dotfiles/
├── bash/
│   └── dev           # Development session setup script
├── nvim/             # Neovim configuration (LazyVim-based)
├── tmux/
│   └── tmux.conf     # Tmux terminal multiplexer configuration
├── install.sh        # Installation script
└── README.md         # This file
```

## Installation

1. Clone this repository:
  ```bash
  git clone <repository-url> ~/.dotfiles
  ```

2. Install (requires sudo for global dev script):
  ```bash
  ./install.sh
  ```

## Components

### Tmux
Terminal multiplexer configuration with:
- Custom prefix key: `Ctrl+Space`
- Base index starting at 1
- Status bar positioned at top
- Optimized escape time

### Neovim
LazyVim-based configuration with:
- Lazy loading for optimal performance
- Autoformat disabled by default
- Custom plugin configurations
- Modern development setup

### Development Script
The `dev` script provides automated tmux session management:
- Creates a development session with 3 windows:
  - `claude`: Claude Code interface
  - `nvim`: Neovim editor
  - `terminal`: General terminal
- Automatically switches to existing sessions
- Installed globally as `/usr/local/bin/dev`

Usage:
```bash
dev [directory] [session-name]
```

## Usage

After installation:
1. Restart your terminal or source the configuration files to apply the changes
2. Use the `dev` command from anywhere to start a development session:
   ```bash
   # Start dev session in current directory
   dev
   
   # Start dev session in specific directory
   dev ~/projects/myproject
   
   # Start dev session with custom name
   dev ~/projects/myproject myproject-dev
   ```

## Dependencies

- JetBrainsMono Nerd Font Mono fonts
- GNU stow
- i3
- polybar
- tmux
- neovim
- picom
- rofi
- wezterm via flatpak

## Contributing

This is a personal dotfiles repository. Feel free to fork and adapt for your own use.
