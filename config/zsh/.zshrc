# Nicer formatting a list of Directories to be prepend to $PATH
declare -a dirs_to_prepend
dirs_to_prepend=(
  "/usr/bin"
  "/usr/local/bin"
  "/usr/local/sbin"
  "/usr/local"
  "/usr/local/opt/mysql@5.7/bin"
  "$HOME/dotfiles/bin"
  "$HOME/bin"
  "$(brew --prefix coreutils)/libexec/gnubin" # Add brew-installed GNU core utilities bin
  "$(brew --prefix)/share/npm/bin" # Add npm-installed package bin
  "$HOME/.composer/vendor/bin" # composer support
  "$HOME/.cargo/env" # cargo/rust support for zr
)
for dir in ${(k)dirs_to_prepend[@]}
do
  if [ -d ${dir} ]; then
    # If these directories exist, then prepend them to existing PATH
    PATH="${dir}:$PATH"
  fi
done
unset dirs_to_prepend
export PATH
  
# zplug should be installed before setting up zsh
source ~/.zplug/init.zsh
zplug "geometry-zsh/geometry"
zplug "wfxr/forgit" #adds ga, gi, gd, glo, gclean
zplug load

# I prefer two-line-prompt in geometry
#GEOMETRY_PROMPT+=(geometry_newline)

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(autojump fzf node npm osx)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# aliases!
alias ffsnpm='rm -rf node_modules  && npm i'
alias vscode='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'
alias art='php artisan'

# my custom version of the 'git' plugin
alias g='git'
alias gs='git status'
alias gco='git checkout'
alias gfa='git fetch --all'
alias gg='git grep'
alias gfg='git ls-files | grep'

# spotify integration
alias s='spotify'


# custom dev work, these are dumb/temporary
alias appdev='NODE_ENV=local NOW_CONFIG=../now.local.json nuxt dev' # rivalry-app dev
alias rushlanedev='NODE_ENV=local NOW_CONFIG=../now.local.json RUSHLANE_LOCAL=true nuxt dev' # rivalry-app dev
alias appbuild='NODE_ENV=local NOW_CONFIG=../now.local.json nuxt build'
alias appstart='NODE_ENV=local NOW_CONFIG=../now.local.json nuxt start'
alias crmdev='NODE_ENV=local NOW_CONFIG=./now.local.json nuxt dev' # rivalry-crm dev
alias crmbuild='NODE_ENV=local NOW_CONFIG=./now.local.json nuxt build'
alias crmstart='NODE_ENV=local NOW_CONFIG=./now.local.json nuxt start'
