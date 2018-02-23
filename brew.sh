#!/usr/bin/env zsh

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "Installing Homebrew formulas..."

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install command-line tools
brew install zsh
brew install wget
brew install curl
brew install git
brew install node
brew install openssl
brew install watchman
brew install mongodb

# Install GUI apps
brew cask install google-chrome
brew cask install atom
brew cask install vlc
brew cask install slack
brew cask install iterm2
brew cask install tower
brew cask install ngrok
brew cask install alfred
brew cask install bartender
brew cask install dropbox
brew cask install flux
brew cask install adobe-creative-cloud
brew cask install aerial
brew cask install flycut
brew cask install android-studio
brew cask install filezila
brew cask install intellij-idea-ce
brew cask install messenger
brew cask install caffeine

# Remove outdated versions from the cellar.
brew cleanup

echo "Done"
