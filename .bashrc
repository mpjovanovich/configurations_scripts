# DON'T JUST DROP THIS IN PLACE!
# These are just some options to add.

#######################################################################
## Mike's custom stuff
#######################################################################
## The highlighting on writable folders in the "less" application drives me nuts.
alias ls='ls --color=none'

## Only show the username in the prompt.
## 036 = cyan color. Works well with the current color scheme.
export PS1="\[\033[01;36m\]\u: \[\e[01;37m\]"

export PATH="/usr/lib/wsl/lib:$PATH"
export PATH="/usr/local/cuda-12.2/bin${PATH:+:${PATH}}"

export LD_LIBRARY_PATH="/usr/local/cuda-12.2/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
export CUDA_HOME="/usr/local/cuda"

## Set the default editor for all programs
export VISUAL=vim
export EDITOR="$VISUAL"

## Needed for X server
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0
export LIBGL_ALWAYS_INDIRECT=1

alias python=python3
alias apt-all='sudo apt update && sudo apt upgrade -y'

function git_acp() {
    git add .
    git commit --allow-empty-message -a -m "$1"
    git push
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# To launch native windows ADB from WSL2:
# Go to C:\Users\mpjov\AppData\Local\Android\Sdk\platform-tools
# Make a copy of adb.exe, and call it adb
# Add symlink in WSL: sudo ln -s /mnt/c/platform-tools/adb.exe /usr/bin/adb
export ANDROID_HOME="/mnt/c/Users/mpjov/AppData/Local/Android/Sdk"

# Shorthand for my user profile
# Yes, it's lowercase - but it's worth it.
export user="/mnt/c/Users/mpjovanovich"
