# Dotfiles

I use stow to manage and sync my dotfiles.

## Installation

You may need to backup your original dotfiles before the installation.

```bash
brew install stow

git clone https://github.com/Dzx1025/dotfiles.git

cd dotfiles
```

### Neovim

```bash
stow neovim
```

### Zsh

To use powerlevel10k theme, I set my terminal font as the MesloLGS Nerd Font.

```bash
stow zsh
```

### Tmux

```bash
# install TPM
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

stow tmux
```
