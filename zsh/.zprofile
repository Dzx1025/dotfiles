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
  [[ -s "/opt/homebrew/opt/nvm/nvm.sh" ]] && . "/opt/homebrew/opt/nvm/nvm.sh"
  [[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ]] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
}

nvm() { load_nvm; nvm "$@"; }
node() { load_nvm; node "$@"; }
npm() { load_nvm; npm "$@"; }
npx() { load_nvm; npx "$@"; }
pnpm() { load_nvm; pnpm "$@"; }
yarn() { load_nvm; yarn "$@"; }
corepack() { load_nvm; corepack "$@"; }

# Conda command shim, without loading the shell hook until needed.
if [[ -d "/opt/homebrew/Caskroom/miniconda/base/condabin" ]]; then
  path=("/opt/homebrew/Caskroom/miniconda/base/condabin" $path)
fi

load_conda() {
  unset -f conda load_conda
  local conda_exe="/opt/homebrew/bin/conda"
  [[ -x "$conda_exe" ]] && eval "$("$conda_exe" shell.zsh hook 2>/dev/null)"
}

conda() { load_conda; conda "$@"; }

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
