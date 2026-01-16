
. "$HOME/.local/bin/env"
# Load cargo environment variables
. "$HOME/.cargo/env"
# Openjdk
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

# Homebrew auto update
export HOMEBREW_AUTO_UPDATE_SECS="86400"

# pnpm
export PNPM_HOME="/Users/zeke/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Added for Claude Code LSP
export ENABLE_LSP_TOOL=1
export PATH="$HOME/.local/share/nvim/mason/bin:$PATH"

# Added by Antigravity
export PATH="/Users/zeke/.antigravity/antigravity/bin:$PATH"
