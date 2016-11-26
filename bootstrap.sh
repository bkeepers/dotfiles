#!/bin/bash
# Create symlinks for files in this directory in ~/

set -e

# change to directory of this script
cd $(dirname $0)

# Install oh my zsh
if [ ! -d ~/.oh-my-zsh ]; then
  echo "Installing oh-my-zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

echo -e "Installing homebrew dependencies..."
brew bundle --file=brewfile

backup=~/.dotfiles-backup/$(date -u +"%Y-%m-%dT%H:%M:%SZ")
mkdir -p $backup

echo -e "\n\nInstalling dotfiles..."
# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in *; do
  # Skip this file
  if [ "$file" = "$(basename $0)" ]; then
    continue
  fi

  if [ -e ~/.$file ]; then
    echo "Backing up ~/.$file in $backup"
    mv ~/.$file $backup
  fi
  echo "Symlinking $PWD/$file to ~/.$file"
  ln -sf $PWD/$file ~/.$file
done
