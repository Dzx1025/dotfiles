
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(conda "shell.$(basename "${SHELL}")" hook)"

# Added by Toolbox App
export PATH="$PATH:/Users/zeke/Library/Application Support/JetBrains/Toolbox/scripts"


# Setting PATH for Python 3.11
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.11/bin:${PATH}"
export PATH
