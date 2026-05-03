export NVM_DIR="$HOME/.nvm"

# Homebrew paths can be moved behind system paths by macOS login startup.
path=(
  /opt/homebrew/bin
  /opt/homebrew/sbin
  $path
)

# Load heavyweight version managers on first use.
load_nvm() {
  unset -f nvm node npm npx pnpm yarn corepack load_nvm
  [[ -s "$NVM_DIR/nvm.sh" ]] && . "$NVM_DIR/nvm.sh"
  [[ -s "$NVM_DIR/bash_completion" ]] && . "$NVM_DIR/bash_completion"
}

nvm() { load_nvm; nvm "$@"; }
node() { load_nvm; node "$@"; }
npm() { load_nvm; npm "$@"; }
npx() { load_nvm; npx "$@"; }
pnpm() { load_nvm; pnpm "$@"; }
yarn() { load_nvm; yarn "$@"; }
corepack() { load_nvm; corepack "$@"; }

# Added by Toolbox App
path=(
  $path
  "/Users/zeke/Library/Application Support/JetBrains/Toolbox/scripts"
)

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.zsh 2>/dev/null || :
# For local aws dev
export AWS_PROFILE=localstack
