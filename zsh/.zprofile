
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(conda "shell.$(basename "${SHELL}")" hook)"

# Added by Toolbox App
export PATH="${PATH}:/Users/zeke/Library/Application Support/JetBrains/Toolbox/scripts"

