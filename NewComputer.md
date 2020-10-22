# New Computer

Fresh setup, just the basics.


## Basic Installs

*These are the immediate defaults, things that aren't automated.*

### Browsers

- [Chrome](https://www.google.com/chrome/)
- [Firefox](https://www.mozilla.org/en-CA/firefox/new/)

### Command Line Helpers

- `xcode-select --install` for git access
- [Brew](https://brew.sh/)

### App Store

- [Spark Mail](https://apps.apple.com/ca/app/spark-email-app-by-readdle/id1176895641?mt=12)
- [Tweetbot](https://apps.apple.com/ca/app/tweetbot-3-for-twitter/id1384080005?mt=12)
- [Moom](https://apps.apple.com/ca/app/moom/id419330170?mt=12)
- [1Password 6 App Store](https://apps.apple.com/ca/app/1password/id443987910?mt=12)
- [Fuzzy Time](https://apps.apple.com/ca/app/fuzzytime/id950297057?mt=12) I love this dumb thing.

### Third Party

- [iTerm 2](https://www.iterm2.com/downloads.html)
- [VS Code](https://code.visualstudio.com/docs/setup/mac)
- [Slack](https://slack.com/intl/en-ca/downloads/mac)
- [Sketch](https://www.sketch.com/get/) (Work License)
- [Notion](https://notion.so) (Work License)
- [Spotify](https://www.spotify.com/ca-en/download/mac/)
- [Sequel Pro](https://sequelpro.com/download)
- [Caret](https://caret.io/)
- [VLC](https://www.videolan.org/vlc/download-macosx.html)
- [PS4 Remote Play](https://remoteplay.dl.playstation.net/remoteplay/lang/en/index.html)
- [Bartender](https://www.macbartender.com/) (License in email)
- [Launch Bar](https://www.obdev.at/products/launchbar/download.html) (License in email)
- [Monodraw](https://monodraw.helftone.com/thank-you/) (License in email)
- [Pastebot](https://tapbots.net/pastebot2/Pastebot.dmg) (License in email)
- [Insomnia](https://insomnia.rest/download/)
- [CloudApp](https://www.getcloudapp.com/download/mac) (personal)
- [Folx](https://mac.eltima.com/download-manager.html) (License in email)



## Setup TODOs

1. Login to Chrome, sync my passwords/accounts

2. Install 1Password, sync my passwords, and move over my license file. Legacy license cannot be downloaded again.

3. Copy over your ssh keys (need it to clone repo)

4. Manually install each vscode plugin, don't seem to have a good way to transfer.

## Git Setup

To prevent people accidentally running this step after looking at my Repo, I'll just manually run it here. Be sure to configure your global git with this command, replacing your name.

```bash
GIT_AUTHOR_NAME="Cool Guy"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="cool@guy.me"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

## Clone the dotfiles repo

We're just going to clone these directly into `~/dotfiles`, and symlink them as needed.

```bash
cd ~/
git clone git@github.com/unr/dotfiles.git dotfiles
```


## Setup Brew Defaults

Stealing straight from [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles/blob/master/brew.sh), run the brew setup script.

```bash
sh .brew
```

This should install a bunch of command line things that are needed (latest git, nginx, php, etc).

## Setup MacOS Defaults

Stealing straight from [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles/blob/master/.macos), run the macos setup script.

If are setting up a from-scratch computer, and want to reset the dock icons. uncomment `.macos:361`

```bash
sh .macos
```

This should set any systemwide preferences needed on MacOS, as well as any application-specific configs that are available. This should set up:

- Moom
- iTerm 2 


## Environment Setups

- Install [OhMyZsh](https://ohmyz.sh/). After this, you may need to run the *git setup* steps again.

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

- Install [zplug](https://github.com/zplug/zplug)

```bash
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
```

- Install [NVM](https://github.com/nvm-sh/nvm) and latest node.

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash

```

## Symlink dotfiles

We want to make sure we commit/sync all changes with the git repo. So all the dotfiles we need to use should be symlinked to the correct places. 

- [Symlink dotfiles](./SymlinkDotfiles.md)


## Install ZSH plugins

After we have symlinked our zshrc, we need to use zplug to install related plugins.

```bash
zplug install
```
