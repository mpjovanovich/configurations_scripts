# Don't replace all of the stuff that's already in the default bashrc!
# These are just some options to add.

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
