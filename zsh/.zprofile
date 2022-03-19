#!/bin/sh
# Profile file. Runs on login.
# Systemd
export XDG_RUNTIME_DIR=/run/user/`id -u`
# Adds `~/.scripts` and all subdirectories to $PATH
export PATH="$PATH:$(du "$HOME/.bin/" "$HOME/.npm-packages" "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export PATH="~/.npm-global/bin:$PATH"
export EDITOR="nvim" 
export TERMINAL="kitty"
export BROWSER="firefox"
export READER="zathura"
export FILE="ranger"


## ssh agent
eval $(ssh-agent)

#Fuzzy Finder with fd colored folders, hideen files and not git directories. 

#export FZF_ALT_C_COMMAND="fd --type d --exclude .git --follow --hidden"
export FZF_DEFAULT_COMMAND="fd --type f --exclude .git --follow --hidden"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Start graphical server if i3 not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 >/dev/null && exec startx

# MPD daemon start (if no other user instance exists)
#[ ! -s ~/.config/mpd/pid ] && mpd

# Switch escape and caps if tty:
sudo -n loadkeys ~/.scripts/ttymaps.kmap 2>/dev/null

# Colored Man Pages
man() {
	LESS_TERMCAP_md=$'\e[01;31m' \
	LESS_TERMCAP_me=$'\e[0m' \
	LESS_TERMCAP_se=$'\e[0m' \
	LESS_TERMCAP_so=$'\e[01;44;33m' \
	LESS_TERMCAP_ue=$'\e[0m' \
	LESS_TERMCAP_us=$'\e[01;32m' \
	command man "$@"
}

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
#export RESTIC_REPOSITORY_FILE="/run/media/hdd/restic/"
export RESTIC_REPOSITORY="/run/media/hdd/restic/"
#export RETENTION_DAYS=7
#export RETENTION_WEEKS=2
#export RETENTION_MONTHS=1
#export RETENTION_YEARS=1
#export RESTIC_PASSWORD="pass show restic"
export RESTIC_PASSWORD_COMMAND="pass show restic"


# Ucollage
export UCOLLAGE_COLUMNS="-7"
export UCOLLAGE_LINES="-1"
export UCOLLAGE_EXPAND_DIR="-1"



