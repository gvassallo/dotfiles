source ~/.profile
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gabriele"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting cp colored-man tmux)
source $ZSH/oh-my-zsh.sh

if [ "$TMUX" = "" ]; then tmux; fi

bindkey -v
bindkey "^?" backward-delete-char
bindkey "^H" backward-delete-char
bindkey "^W" backward-delete-word

alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"

# User configuration
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:/opt/X11/bin:/Volumes/Mac-HD/MATLAB_R2015a.app/bin/:$PATH"
export PATH="${PATH}:/usr/local/texlive/2015/bin" 
export PATH="${PATH}:$HOME/jflex-1.6.1/jflex/bin" 
export PATH="${PATH}:$HOME/jflex-1.6.1/" 
export PATH="${PATH}:/Applications/racket/bin/"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/google-cloud-sdk/bin:$PATH"

export BLUEBIRD_WARNINGS=0
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias vim="DYLD_FORCE_FLAT_NAMESPACE=1 /Applications/MacVim.app/Contents/MacOS/vim"
alias vim="nvim"
alias latexmk="latexmk -pdf -pvc -output-directory=out" 
alias notify="osascript  -e 'display notification \"ur stil a bitch\" with title \"Guess wat?\"'"
alias r="ranger"
# alias tmux="TERM=screen-256color-bce tmux"

#alias dir 
hash -d university="/Users/Ghost/Projects/university"
hash -d padlock="/Users/Ghost/Projects/node/padlock"
hash -d cpl="/Users/Ghost/Projects/university/comparative-programming-languages/cplwm"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export EDITOR="nvim"
