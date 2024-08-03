
. "$HOME/.cargo/env"
# Openjdk
export PATH=/opt/homebrew/opt/openjdk/bin:/opt/homebrew/opt/openjdk/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/usr/local/share/dotnet:~/.dotnet/tools:/Users/zeke/.local/share/zinit/polaris/bin:/opt/homebrew/opt/openjdk/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/Users/zeke/.cargo/bin:/Applications/iTerm.app/Contents/Resources/utilities:/Users/zeke/Library/Application Support/JetBrains/Toolbox/scripts:/Users/zeke/Library/Application Support/JetBrains/Toolbox/scripts
export CPPFLAGS=-I/opt/homebrew/opt/openjdk/include

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

