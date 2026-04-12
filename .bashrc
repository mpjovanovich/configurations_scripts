# DON'T JUST DROP THIS IN PLACE!
# These are just notes on things that I usually add.

#######################################################################
## Mike's custom stuff
#######################################################################
## The highlighting on writable folders in the "less" application drives me nuts.
alias ls='ls --color=none'

## Only show the username in the prompt.
## 036 = cyan color. Works well with the current color scheme.
export PS1="\[\033[01;36m\]\u: \[\e[01;37m\]"

## Set the default editor for all programs
export VISUAL=vim
export EDITOR="$VISUAL"

alias python=python3

# Shorthand for my user profile
# Yes, it's lowercase - but it's worth it.
export user="/mnt/c/Users/mpjovanovich"

# Make sure to have this file in place; convenience bash scripts
source ~/.bash_functions

## PATH additions if applicable
#export PATH="$PATH:/mnt/c/Users/mpjov/AppData/Local/Programs/cursor/resources/app/bin/"
#export PATH=$PATH:/usr/local/go/bin

## Needed for X server if using it
#export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0
#export LIBGL_ALWAYS_INDIRECT=1

## CUDA stuff - not relevant unless you're using it
#export PATH="/usr/lib/wsl/lib:$PATH"
#export PATH="/usr/local/cuda-12.2/bin${PATH:+:${PATH}}"

#export LD_LIBRARY_PATH="/usr/local/cuda-12.2/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
#export CUDA_HOME="/usr/local/cuda"

# To launch native windows ADB from WSL2:
# Go to C:\Users\mpjov\AppData\Local\Android\Sdk\platform-tools
# Make a copy of adb.exe, and call it adb
# Add symlink in WSL: sudo ln -s /mnt/c/platform-tools/adb.exe /usr/bin/adb
# export ANDROID_HOME="/mnt/c/Users/mpjov/AppData/Local/Android/Sdk"
