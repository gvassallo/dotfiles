# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(
  git
  bundler
  osx
  rake
  ruby
  rbenv
  rails
  docker-compose
  docker-machine
  docker
  node
  nvm
  rvm
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

alias vim="nvim"
alias vimdiff="nvim -d"
alias serve="ruby -run -e httpd . -p 9090"

export TERM="xterm-256color"
export OC_EDITOR=nvim

# Personal environmental variables
if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi
