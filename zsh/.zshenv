
. "$HOME/.cargo/env"
# Openjdk
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

# Set FZF color scheme based on system theme
export FZF_DEFAULT_OPTS="$(defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo '
  --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8
  --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc
  --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8
' || echo '
  --color=bg+:#ccd0da,bg:#eff1f5,spinner:#dc8a78,hl:#d20f39
  --color=fg:#4c4f69,header:#d20f39,info:#8839ef,pointer:#dc8a78
  --color=marker:#dc8a78,fg+:#4c4f69,prompt:#8839ef,hl+:#d20f39
')"

