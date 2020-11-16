# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="/home/pantoja/.oh-my-zsh"

# default theme
ZSH_THEME="robbyrussell"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=247'

# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
	aws
	asdf
	ruby
	rails
	bundler
	rake
	docker
	docker-compose
	tmux
	fzf
)

source $ZSH/oh-my-zsh.sh

# make cd command needless
setopt auto_cd

# aliases

alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

alias vpn='sudo openfortivpn -c ~/.openfortivpn.conf'
alias vpn-pci='sudo openfortivpn -c ~/.openfortivpn-pci.conf'

alias tig='/home/pantoja/.bin/tig'

alias hoverfly='/home/pantoja/.bin/hoverfly'
alias hoverctl='/home/pantoja/.bin/hoverctl'

alias tx="tmuxinator"
alias txe="tmuxinator e $1"
alias txs='f(){ tmuxinator s "$@" ${PWD##*/}; unset -f f; }; f'
alias txsr="tmuxinator s rails ${PWD##*/}"

alias precommit-add-git-script="ln -s ~/workspace/utils/git_hooks/pre-commit .git/hooks"


# asdf configs

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

. ~/.asdf/plugins/java/set-java-home.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# exports

export EDITOR='nvim'

# mssql driver
export PATH="$PATH:/opt/mssql-tools/bin"

export ASDF_RUBY_BUILD_VERSION=v20200819

# FZF CONFIGS
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi
source ~/powerlevel10k/powerlevel10k.zsh-theme


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
