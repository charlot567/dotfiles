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
brew install git-crypt
brew install node
brew install watchman
brew install postgres

# Install GUI apps
brew cask install 1password
brew cask install google-chrome
brew cask install firefox
brew cask install visual-studio-code
brew cask install vlc
brew cask install slack
brew cask install spotify
brew cask install iterm2
brew cask install tower
brew cask install ngrok
brew cask install alfred
brew cask install bartender
brew cask install aerial
brew cask install flycut
brew cask install caffeine
brew cask install appzapper

# Remove outdated versions from the cellar.
brew cleanup

echo "Done"
