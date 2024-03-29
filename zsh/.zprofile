#!/bin/sh
export XDG_RUNTIME_DIR=/run/user/`id -u`
export PATH="$PATH:$(du "$HOME/.bin/" "$HOME/.npm-packages" "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
#export PATH="~/.npm-global/bin:$PATH"
export EDITOR="nvim" 
export TERMINAL="kitty"
export BROWSER="firefox"
export READER="zathura"
export FILE="ranger"


## ssh agent
eval $(ssh-agent)

 # FZF	
#export FZF_DEFAULT_COMMAND="fd --type f --exclude .git --follow --hidden"
#export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Colored Man Pages
#man() {
#	LESS_TERMCAP_md=$'\e[01;31m' \
#	LESS_TERMCAP_me=$'\e[0m' \
#	LESS_TERMCAP_se=$'\e[0m' \
#	LESS_TERMCAP_so=$'\e[01;44;33m' \
#	LESS_TERMCAP_ue=$'\e[0m' \
#	LESS_TERMCAP_us=$'\e[01;32m' \
#	command man "$@"
#}

# Less Colors
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

# Restic 
#export RESTIC_REPOSITORY="~/Hdd/restic/"
#export RESTIC_PASSWORD_COMMAND="pass show restic"
