# Nicer formatting a list of Directories to be prepend to $PATH
declare -a dirs_to_prepend
dirs_to_prepend=(
  "/usr/bin"
  "/usr/local/bin"
  "/usr/local/sbin"
  "/usr/local"
  "/usr/local/opt/mysql@5.7/bin"
  "/usr/local/opt/php@7.3/bin"
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
plugins=(autojump fzf node npm macos)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

ZSH_THEME="dracula-pro"
# Tweaking bat
BAT_THEME="dracula-pro"

# aliases!
alias f='fuck'
alias ffsnpm='rm -rf node_modules  && npm i'
alias vscode='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'
alias art='php artisan'
alias sb='npx nuxt storybook'

# my custom version of the 'git' plugin
alias g='git'
alias gs='git status'
alias gco='git checkout'
alias gfa='git fetch --all'
alias gg='git grep'
alias gfg='git ls-files | grep'

# cloudflare wrangler
alias wr='wrangler'

# spotify integration
alias s='spotify'


### Custom vc deploys for different environment
alias vcrushlane='vc -e RIVALRY_API_URL=https://dev2-app.rivalry.sh/app/ -e RIVALRY_SSR_URL=https://dev2-app.rivalry.sh/app/ -e PUSHER_APP_KEY=bd156e88fde31ae97e00 -e PUSHER_CLUSTER=mt1  -b RIVALRY_API_URL=https://dev2-app.rivalry.sh/app/ -b RIVALRY_SSR_URL=https://dev2-app.rivalry.sh/app/ -b PUSHER_APP_KEY=bd156e88fde31ae97e00 -b PUSHER_CLUSTER=mt1 && vc alias https://rivalry-app-unr.rivalry.sh rushlane.rivalry.sh && saycomplete'
alias vcdev3='vc -e RIVALRY_API_URL=https://dev3-app.rivalry.sh/app/ -e RIVALRY_SSR_URL=https://dev3-app.rivalry.sh/app/ -e PUSHER_APP_KEY=7e0e61ce5733be7a93ad -b RIVALRY_API_URL=https://dev3-app.rivalry.sh/app/ -b RIVALRY_SSR_URL=https://dev3-app.rivalry.sh/app/ -b PUSHER_APP_KEY=7e0e61ce5733be7a93ad -e APPBASE_APP=dev3 -b APPBASE_APP=dev3 -e APPBASE_CREDENTIALS=5f19df09004f:e024e00f-1610-4142-8ba9-a5a631aee12b -b APPBASE_CREDENTIALS=5f19df09004f:e024e00f-1610-4142-8ba9-a5a631aee12b && saycomplete'
alias vcau='vc -e RIVALRY_API_URL=https://dev5-app.rivalry.sh/app/ -e RIVALRY_SSR_URL=https://dev5-app.rivalry.sh/app/ -e PUSHER_APP_KEY=b586a4fdd170de9de783 -e PUSHER_CLUSTER=mt1  -b RIVALRY_API_URL=https://dev5-app.rivalry.sh/app/ -b RIVALRY_SSR_URL=https://dev5-app.rivalry.sh/app/ -b PUSHER_APP_KEY=b586a4fdd170de9de783 -b PUSHER_CLUSTER=mt1 -e RIVALRY_ELASTIC_URL=https://au.rivalry.sh/search -b RIVALRY_ELASTIC_URL=https://au.rivalry.sh/search && vc alias https://rivalry-app-unr.rivalry.sh au.rivalry.sh && saycomplete'
alias vcau-backoffice='vc -e RIVALRY_API_URL=https://dev5-app.rivalry.sh/ -e RIVALRY_SSR_URL=https://dev5-app.rivalry.sh/  -b RIVALRY_API_URL=https://dev5-app.rivalry.sh/ -b RIVALRY_SSR_URL=https://dev5-app.rivalry.sh/  && vc alias https://rivalry-backoffice-unr.rivalry.sh backoffice-au.rivalry.sh && saycomplete'
alias vcdev6='vc -e RIVALRY_API_URL=https://dev6-app.rivalry.sh/app/ -e RIVALRY_SSR_URL=https://dev6-app.rivalry.sh/app/ -e PUSHER_APP_KEY=b586a4fdd170de9de783 -e PUSHER_CLUSTER=mt1  -b RIVALRY_API_URL=https://dev6-app.rivalry.sh/app/ -b RIVALRY_SSR_URL=https://dev6-app.rivalry.sh/app/ -b PUSHER_APP_KEY=b586a4fdd170de9de783 -b PUSHER_CLUSTER=mt1 -e RIVALRY_ELASTIC_URL=https://dev6.rivalry.sh/search -b RIVALRY_ELASTIC_URL=https://dev6.rivalry.sh/search && vc alias https://rivalry-app-unr.rivalry.sh dev6.rivalry.sh && saycomplete'
alias vcdev6-backoffice='vc -e RIVALRY_API_URL=https://dev6-app.rivalry.sh/ -e RIVALRY_SSR_URL=https://dev6-app.rivalry.sh/  -b RIVALRY_API_URL=https://dev6-app.rivalry.sh/ -b RIVALRY_SSR_URL=https://dev6-app.rivalry.sh/  && vc alias https://rivalry-backoffice-unr.rivalry.sh backoffice-dev6.rivalry.sh && saycomplete'

# alerts
alias saycomplete='say "Hey Paul, your deploy is complete"'

## Rivalry Docker Alias
# run in rivalry-backend
alias rivalry-up='docker-compose -f devops/local/docker-compose.yml up -d proxy nginx fpm mysql redis queue'
alias rivalry-down='docker-compose -f devops/local/docker-compose.yml down'
alias rivalry-recreate='docker-compose -f devops/local/docker-compose.yml up -d --no-deps --force-recreate --build proxy nginx fpm mysql redis queue'
# run in node-pinnacle
alias rivalry-pinnacle-up='docker build -t pinnacle:dev -f devops/local/Dockerfile . && docker run -d --rm --network local_rivalry_dev --name pinnacle pinnacle:dev'
alias rivalry-pinnacle-down='docker stop pinnacle && docker rm pinnacle'
# run in rivalry-app
alias rivalry-frontend-up='docker-compose -f devops/local/docker-wrapper.yml up -d'

export MYIP=$(ifconfig en0 | grep "inet " | cut -d" " -f2)

eval $(thefuck --alias)

