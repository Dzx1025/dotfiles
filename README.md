# Dotfiles

I use stow to manage and sync my dotfiles.

## Installation

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

```bash
stow zsh
```

### Tmux

```bash
# install TPM
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
stow tmux
```
