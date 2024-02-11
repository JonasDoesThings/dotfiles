# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export DOTFILES="$(dirname $(readlink -f ~/.zshrc))"

ZSH_THEME="powerlevel10k/powerlevel10k"
zstyle ':omz:update' mode reminder  # enable update reminders
zstyle ':omz:update' frequency 13

plugins=(colorize colored-man-pages extract sudo yarn)

source $ZSH/oh-my-zsh.sh

HIST_STAMPS="yyyy-mm-dd"
COMPLETION_WAITING_DOTS="true"

export LANG=en_US.UTF-8
export EDITOR='nano'
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

hash -d c=/mnt/c

[ -f $ZSH/custom/dirs.zsh ] && source $ZSH/custom/dirs.zsh
for file in $DOTFILES/local/*.zsh; do
    source "$file"
done


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f $DOTFILES/.aliases ] && source $DOTFILES/.aliases

