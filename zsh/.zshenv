
. "$HOME/.cargo/env"
. "$HOME/.local/bin/env"
# Openjdk
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

export HOMEBREW_AUTO_UPDATE_SECS="86400"

# pnpm
export PNPM_HOME="/Users/zeke/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/zeke/.lmstudio/bin"
# End of LM Studio CLI section

