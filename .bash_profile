#!/usr/bin/env bash

export LANG="en_US.UTF-8"
export BASH_SILENCE_DEPRECATION_WARNING=1
export SDKROOT=$(xcrun --show-sdk-path)

if [[ $(uname -p) == 'arm' ]]; then
    # 프로세서가 arm 즉 Apple Silicon 이라면
    export PATH="/opt/homebrew/bin:$PATH"
    export PATH="/opt/homebrew/sbin:$PATH"
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    export PATH="/usr/local/bin:$PATH"
    export PATH="/usr/local/sbin:$PATH"
    eval "$(/usr/local/bin/brew shellenv)"
    export PATH="/usr/local/opt/node@16/bin:$PATH"
fi

export PATH="$PATH:~/.local/bin"

export PATH="$PATH:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export PATH="/opt/homebrew/opt/curl/bin:$PATH"
