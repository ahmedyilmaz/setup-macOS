#!/usr/bin/env bash

echo "🚀 Starting setup"

# Install Homebrew if not already installed
if test ! $(which brew); then
    echo "🍺 Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "🍺 Updating homebrew..."
brew update

PACKAGES=(
    swiftlint
    xcodegen
    coreutils
    git
    pthon
    python3
    quicktype
)
echo "🍺 Installing brew packages..."
brew install ${PACKAGES[@]}

CASKS=(
    google-chrome
    brave-browser
    firefox
    telegram
    whatsapp
    discord
    iterm2
    zeplin
    spotify
    vlc
    visual-studio-code
    the-unarchiver
    github
    sourcetree
    postman
    rectangle
    macs-fan-control
    miro
    free-download-manager
    sf-symbols
    handbrake
    osxfuse
    microsoft-office
)
echo "🍺 Installing cask apps..."
brew cask install ${CASKS[@]}

GEMS=(
    cocoapods
    fastlane -NV
)
echo "💎 Installing Ruby gems..."
sudo gem install ${GEMS[@]} -N

echo "🧼 Cleaning up..."
brew cleanup -s


echo "🎉 Setup complete!"