# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"
# Add Plugins
# Powerlevel10k
zinit ice depth=1; zinit light romkatv/Powerlevel10k
# Zsh Plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab
# Snippets
# zinit snippet OMZP::git
# Load completions

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/zeke/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
# autoload -U compinit && compinit

zinit cdreplay -q

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Keybindings
bindkey -e
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# history setup
HISTFILE=$HOME/.zsh_history
SAVEHIST=1000
HISTSIZE=999
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
setopt hist_verify

# completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# set descriptions format to enable group support
# NOTE: don't use escape sequences here, fzf-tab will ignore them
zstyle ':completion:*:descriptions' format '[%d]'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# force zsh not to show completion menu, which allows fzf-tab to capture the unambiguous prefix
zstyle ':completion:*' menu no
# preview directory's content with eza when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --icons -a --group-directories-first --git --color=always $realpath'
# custom fzf flags
if defaults read -globalDomain AppleInterfaceStyle &> /dev/null; then
    # Dark mode
    zstyle ':fzf-tab:*' fzf-flags \
    --color=bg+:#313244,spinner:#f5e0dc,hl:#f38ba8 \
    --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
    --color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
    --color=selected-bg:#45475a \
    --multi \
    --height=80% --layout=reverse --info=inline --margin=1 --padding=1 --ansi --preview-window=right:50% --pointer '❯'
else
    # Light mode
    zstyle ':fzf-tab:*' fzf-flags \
    --color=bg+:#ccd0da,spinner:#dc8a78,hl:#d20f39 \
    --color=fg:#4c4f69,header:#d20f39,info:#8839ef,pointer:#dc8a78 \
    --color=marker:#7287fd,fg+:#4c4f69,prompt:#8839ef,hl+:#d20f39 \
    --color=selected-bg:#bcc0cc \
    --multi \
    --height=80% --layout=reverse --info=inline --margin=1 --padding=1 --ansi --preview-window=right:50% --pointer '❯'
fi
# switch group using `<` and `>`
zstyle ':fzf-tab:*' switch-group '<' '>'

# aliases
alias c="clear"
alias cat="bat --theme=\$(defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo gruvbox-dark || echo gruvbox-light)"
alias l="eza --icons --git"
alias ls="eza --icons --git"
alias la="eza -a --icons --git"
alias ll="eza -al --git"

# Shell integration
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd=cd zsh)"

# OK to perform console I/O before this point.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# From this point on, until zsh is fully initialized, console input won't work and
# console output may appear uncolored.

