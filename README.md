# homebrew-tuck

Homebrew tap for [tuck](https://github.com/Pranav-Karra-3301/tuck) - A modern, beautiful dotfiles manager CLI.

## Installation

```bash
brew tap pranav-karra-3301/tuck
brew install tuck
```

## Dependencies

The formula automatically installs:
- **Node.js 20** (runtime dependency)

## Usage

After installation, get started with:

```bash
# Initialize tuck in your home directory
tuck init

# Add files to track
tuck add ~/.zshrc ~/.gitconfig

# Check status of tracked files
tuck status

# Sync changes with your repository
tuck sync
```

## About

tuck is a modern dotfiles manager with:
- Beautiful, polished CLI experience
- Git-native workflow
- Safe by default (backups, confirmations)
- Zero-config to start, powerful when configured

For more information, visit the [main repository](https://github.com/Pranav-Karra-3301/tuck).
