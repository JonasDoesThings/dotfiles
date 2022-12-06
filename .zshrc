export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"
zstyle ':omz:update' mode reminder  # enable update reminders
zstyle ':omz:update' frequency 13

plugins=(git colorize colored-man-pages extract)

source $ZSH/oh-my-zsh.sh

HIST_STAMPS="yyyy-mm-dd"
COMPLETION_WAITING_DOTS="true"

export LANG=en_US.UTF-8
export EDITOR='nano'

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm


hash -d c=/mnt/c

[ -f $ZSH/custom/dirs.zsh ] && source $ZSH/custom/dirs.zsh
[ -f .aliases ] && source .aliases
