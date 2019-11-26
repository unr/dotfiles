# Nicer formatting a list of Directories to be prepend to $PATH
declare -a dirs_to_prepend
dirs_to_prepend=(
  "/usr/bin"
  "/usr/local/sbin"
  "/usr/local"
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
zplug load

# I prefer two-line-prompt
GEOMETRY_PROMPT+=(geometry_newline)

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Default ZSH Theme
# ZSH_THEME="robbyrussell"
# Custom ZSH theme, using https://github.com/geometry-zsh/geometry
# ZSH_THEME="geometry"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git node npm osx)

source $ZSH/oh-my-zsh.sh

# User configuration

# aliases!
alias ffsnpm='rm -rf node_modules && npm cache clean && npm i'
alias vscode='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'
