
. "$HOME/.cargo/env"
# Openjdk
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

# Set FZF color scheme based on system theme
# if defaults read -globalDomain AppleInterfaceStyle &> /dev/null; then
#     # Dark mode
#     export FZF_DEFAULT_OPTS=" \
#     --color=bg+:#313244,spinner:#f5e0dc,hl:#f38ba8 \
#     --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
#     --color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
#     --color=selected-bg:#45475a \
#     --multi"
# else
#     # Light mode
#     export FZF_DEFAULT_OPTS=" \
#     --color=bg+:#ccd0da,spinner:#dc8a78,hl:#d20f39 \
#     --color=fg:#4c4f69,header:#d20f39,info:#8839ef,pointer:#dc8a78 \
#     --color=marker:#7287fd,fg+:#4c4f69,prompt:#8839ef,hl+:#d20f39 \
#     --color=selected-bg:#bcc0cc \
#     --multi"
# fi
