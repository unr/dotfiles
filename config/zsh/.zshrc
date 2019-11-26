# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Generate new ~/.zr/init.zsh if it does not exist or ~/.zshrc is newer
if [[ ! -f ~/.config/zr.zsh ]] || [[ ~/.zshrc -nt ~/.config/zr.zsh ]]; then
  zr \
    frmendes/geometry \
    jedahan/geometry-hydrate \
    junegunn/fzf/shell/key-bindings.zsh \
    > ~/.config/zr.zsh
fi
# Add support for zr plugin management
source ~/.config/zr.zsh

# use zr to add the geometry theme
zr load geometry-zsh/geometry

# I prefer two-line-prompt
GEOMETRY_PROMPT+=(geometry_newline)

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Default ZSH Theme
ZSH_THEME="robbyrussell"
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
plugins=(git node npm brew)

source $ZSH/oh-my-zsh.sh

# User configuration

# aliases!
alias ffsnpm='rm -rf node_modules && npm cache clean && npm i'
alias vscode='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'
