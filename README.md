# Dotfiles

A centralized configuration repository for my terminal-based workflow.

## Overview

This repository contains configuration files for various terminal tools and applications to maintain a consistent development environment across different systems.

## Structure

```
dotfiles/
├── bash/
│   └── dev                # Development session setup script
├── nvim/                  # Neovim configuration (LazyVim-based)
├── tmux/                  # Tmux terminal multiplexer configuration
├── i3/                    # i3 window manager configuration
├── polybar/               # Polybar status bar configuration
├── install-config.sh      # Config installation script (uses GNU stow)
├── install-bash.sh        # Bash script installation script
└── README.md              # This file
```

## Installation

1. Clone this repository:

   ```bash
   git clone <repository-url> ~/.dotfiles
   cd ~/.dotfiles
   ```

2. Install configurations using GNU stow:

   ```bash
   ./install-config.sh
   ```

3. Install dev script globally (requires sudo):

   ```bash
   ./install-bash.sh
   ```

## Components

### i3 Window Manager

Tiling window manager configuration featuring:

- **Theme**: Catppuccin Mocha color scheme
- **Font**: JetBrainsMono Nerd Font Mono (12pt)
- **Modifier key**: `Mod4` (Super/Windows key)
- **Navigation**: Vim-style hjkl bindings
- **Gaps**: 10px inner, 5px outer (smart gaps enabled)
- **Borders**: 2px colored borders, no title bars

Key bindings:

- `Mod4+Return`: Launch Wezterm terminal
- `Mod4+Shift+Return`: Launch Google Chrome
- `Mod4+Space`: Rofi application launcher
- `Mod4+hjkl`: Navigate between windows
- `Mod4+Shift+q`: Close window

Integration:

- Polybar status bar
- Picom compositor for transparency and effects
- i3lock for screen locking

### Polybar

Customizable status bar with:

- **Bar name**: toph
- **Position**: Top
- **Theme**: Catppuccin Mocha
- **Font**: JetBrainsMono Nerd Font Mono

Modules:

- Workspaces (left)
- Date/time (center)
- PulseAudio volume, battery, RAM, CPU, network, system tray (right)

Features:

- Multi-monitor support via xrandr
- Custom color scheme matching i3 theme
- Icons using Nerd Font glyphs

### Tmux

Terminal multiplexer configuration with:

- Custom prefix key: `Ctrl+Space`
- Base index starting at 1
- Status bar positioned at top
- Optimized escape time (10ms)

### Neovim

LazyVim-based configuration with:

- Lazy loading for optimal performance
- Autoformat disabled by default
- LazyVim extras: JSON, Markdown language support
- Snacks.nvim picker configured to show hidden and ignored files
- Custom plugin configurations in `lua/plugins/`

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

**Required:**

- [JetBrainsMono Nerd Font](https://www.nerdfonts.com/) - Font with icon support
- [GNU stow](https://www.gnu.org/software/stow/) - Symlink farm manager
- [i3](https://i3wm.org/) - Tiling window manager
- [polybar](https://polybar.github.io/) - Status bar
- [tmux](https://github.com/tmux/tmux) - Terminal multiplexer
- [neovim](https://neovim.io/) - Text editor (≥0.9.0)
- [picom](https://github.com/yshui/picom) - Compositor
- [rofi](https://github.com/davatorium/rofi) - Application launcher
- [feh](https://feh.finalrewind.org/) - Lightweight image viewer
- wallpaper image at ~/Pictures/wallaper.png

**Optional:**

- [Wezterm](https://wezfurlong.org/wezterm/) (via Flatpak) - Terminal emulator
- Google Chrome - Web browser
- xrandr - Multi-monitor configuration (usually pre-installed)

## Contributing

This is a personal dotfiles repository. Feel free to fork and adapt for your own use.
