#!/usr/bin/env bash

source ./utils.sh

e_header "Installing brew cask apps"

e_arrow "Installing cask and tapping"

brew tap caskroom/versions

e_arrow "Installing cask apps"

apps=(
  aerial
  appcleaner
  atom
  balenaetcher
  bartender
  brave-browser
  daisydisk
  discord
  docker
  firefox
  flycut
  google-chrome
  iterm2
  java
  kap
  ngrok
  plex-media-player
  rectangle
  slack
  spotify
  steam
  sync
  teamviewer
  thunderbird
  transmission
  vlc
  webtorrent
)
for app in "${apps[@]}"; do
  brew cask install $app
done

e_arrow "Installing QuickLook plugins"
# from https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode \
  qlstephen \
  qlmarkdown \
  quicklook-json \
  qlimagesize \
  suspicious-package \
  quicklookase \
  qlvideo

e_arrow "Setting Brave Browser as the default browser"

open -a "Brave Browser" --args --make-default-browser

e_success "Done!"
