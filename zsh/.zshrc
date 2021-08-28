# vim:foldmethod=marker

source $HOME/.config/aliasrc
source $HOME/.config/fzfrc # Load FZF Commands
source $HOME/.profile


#: Main Settings {{{
setopt correct                                                  # Auto correct mistakes
setopt extendedglob                                             # Extended globbing. Allows using regular expressions with *
setopt nocaseglob                                               # Case insensitive globbing
setopt rcexpandparam                                            # Array expension with parameters
setopt nocheckjobs                                              # Don't warn about running processes when exiting
setopt numericglobsort                                          # Sort filenames numerically when it makes sense
setopt nobeep                                                   # No beep
setopt appendhistory                                            # Immediately append history instead of overwriting
setopt INC_APPEND_HISTORY																				# New history lines are added to the $HISTFILE incrementally (as soon as they are entered),
setopt histignorealldups                                        # If a new command is a duplicate, remove the older one
setopt autocd                                                   # If only directory path is entered, cd there.
setopt prompt_subst																							# Enable substitution for prompt
setopt INC_APPEND_HISTORY																				# Append into history file
setopt EXTENDED_HISTORY   																			# Add timestamp for each entry
setopt HIST_IGNORE_DUPS																					# Save only one command if 2 common are same and consistent
HISTFILE=~/.zhistory																						# History file
HISTSIZE=10000																										# Set history size
SAVEHIST=1000																										# Ssave history after logout
WORDCHARS=${WORDCHARS//\/[&.;]}                                 # Don't consider certain characters part of the word


#: }}}
#: Completition {{{

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'       # Case insensitive tab completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' rehash true                              # automatically find new executables in path 
# Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
# Trying to fix Scrollback
[ ! -z "$KITTY_WINDOW_ID" ] && export TERM=xterm-kitty

#: }}}
#: Keybindings  {{{

bindkey -e
bindkey '^[[7~' beginning-of-line                               # Home key
bindkey '^[[H' beginning-of-line                                # Home key
if [[ "${terminfo[khome]}" != "" ]]; then
  bindkey "${terminfo[khome]}" beginning-of-line                # [Home] - Go to beginning of line
fi
bindkey '^[[8~' end-of-line                                     # End key
bindkey '^[[F' end-of-line                                     # End key
if [[ "${terminfo[kend]}" != "" ]]; then
  bindkey "${terminfo[kend]}" end-of-line                       # [End] - Go to end of line
fi
bindkey '^[[2~' overwrite-mode                                  # Insert key
bindkey '^[[3~' delete-char                                     # Delete key
bindkey '^[[C'  forward-char                                    # Right key
bindkey '^[[D'  backward-char                                   # Left key
bindkey '^[[5~' history-beginning-search-backward               # Page up key
bindkey '^[[6~' history-beginning-search-forward                # Page down key

# Navigate words with ctrl+arrow keys
bindkey '^[Oc' forward-word                                     #
bindkey '^[Od' backward-word                                    #
bindkey '^[[1;5D' backward-word                                 #
bindkey '^[[1;5C' forward-word                                  #
bindkey '^H' backward-kill-word                                 # delete previous word with ctrl+backspace
bindkey '^[[Z' undo                                             # Shift+tab undo last action


bindkey '^a' autosuggest-accept																	# Accept autocompleate from autosuggetion Plugin
source $HOME/.zinit/plugins/zsh-users---zsh-autosuggestions/zsh-autosuggestions.zsh

#: }}}
#: Theming  {{{

# Kitty
autoload -Uz compinit
compinit

## Pure theme Settings
# optionally define some options
PURE_CMD_MAX_EXEC_TIME=1
# change the colors of pure promp.
zstyle ':prompt:pure:prompt:success' color 028
zstyle ':prompt:pure:prompt:error' color 124
zstyle ':prompt:pure:prompt:execution_time' color 154 
zstyle ':prompt:pure:prompt:PURE_GIT_UP_ARROW' color 033
zstyle ':prompt:pure:prompt:PURE_GIT_DOWN_ARROW' color 162
zstyle ':prompt:pure:prompt:git:branch:cached' color 092
zstyle ':prompt:pure:prompt:git:action' color 094
zstyle ':prompt:pure:prompt:git:dirty' color '#ffff00'
zstyle ':prompt:pure:prompt:prompt:continuation' color 242


## Man page opens with color highlighting

man() {
	LESS_TERMCAP_md=$'\e[01;31m' \
	LESS_TERMCAP_me=$'\e[0m' \
	LESS_TERMCAP_us=$'\e[01;32m' \
	LESS_TERMCAP_ue=$'\e[0m' \
	LESS_TERMCAP_so=$'\e[45;93m' \
	LESS_TERMCAP_se=$'\e[0m' \

	command man "$@"
}

#: }}}
#: Plugins {{{

### Added by Zplugin's installer
source "$HOME/.zinit/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin installer's chunk

# Load the pure theme, with zsh-async library that's bundled with it.
zplugin ice pick"async.zsh" src"pure.zsh"
zplugin light sindresorhus/pure

# Fish like Syntax Highlighting
zplugin load zsh-users/zsh-syntax-highlighting

# Fish-like fast/unobtrusive autosuggestions for zsh.
zplugin load zsh-users/zsh-autosuggestions


#: }}}





