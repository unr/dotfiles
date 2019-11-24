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
- [1Password 6](https://app-updates.agilebits.com/download/OPM4) I haven't upgraded, using old version still.



## Setup TODOs

1. Login to Chrome, sync my passwords/accounts

2. Install 1Password, sync my passwords


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

## Setup MacOS Defaults

Stealing straight from [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles/blob/master/.macos), run the macos setup script.

If are setting up a from-scratch computer, and want to reset the dock icons. uncomment `.macos:361`

```bash
./.macos
```

## Setup Brew Defaults

Stealing straight from [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles/blob/master/brew.sh), run the brew setup script.

```bash
./.brew
```

## Symlink dotfiles

We want to make sure we commit/sync all changes with the git repo. So all the dotfiles we need to use should be symlinked to the correct places. 

- [Symlink dotfiles](./SymlinkDotfiles.md)
