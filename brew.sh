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
brew install wget
brew install curl
brew install git
brew install git-crypt
brew install node
brew install postgres

# Install GUI apps
brew install google-chrome
brew install firefox
brew nstall visual-studio-code
brew install vlc
brew install slack
brew install spotify
brew install iterm2
brew install tower
brew install flycut
brew install appzapper

# Remove outdated versions from the cellar.
brew cleanup

echo "Done"
