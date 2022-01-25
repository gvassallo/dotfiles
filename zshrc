source $HOME/antigen/bin/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

antigen bundle git
antigen bundle bundler
antigen bundle osx
antigen bundle rake
antigen bundle ruby
antigen bundle rbenv
antigen bundle rails
antigen bundle docker-compose
antigen bundle docker-machine
antigen bundle docker
antigen bundle node
antigen bundle nvm
antigen bundle rbenv

antigen bundle joshskidmore/zsh-fzf-history-search
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply

alias vim="nvim"
alias vimdiff="nvim -d"
alias serve="ruby -run -e httpd . -p 9090"

alias ba='bundle add'
alias be='bundle exec'
alias bi='bundle install'
alias br='bundle remove'

export TERM="xterm-256color"
export OC_EDITOR=nvim

# Personal environmental variables
if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault
