
. "$HOME/.cargo/env"
# Openjdk
export PATH="/opt/homebrew/opt/openjdk/bin:/Users/zeke/Library/Python/3.9/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

export HOMEBREW_AUTO_UPDATE_SECS="86400"

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
