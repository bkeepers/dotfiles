# Dotfiles

These are my humble dotfiles. A few things to note.

- Uses [oh-my-zsh](http://ohmyz.sh/). See [zshrc](./zshrc) for the configuration.
- Stores sensitive files (like ssh and gpg keys) in an encrypted disk image in ~/Documents/Secure.sparsebundle/ (which would get synced via iCloud)

These aren't really optimized for reuse by others, but if you find these useful. I'd love to know. Send me an email to say hi at bkeepers@github.com.

## Installing

The easiest way to install these is with [Strap](https://github.com/MikeMcQuaid/strap). Fork this repository to your personal GitHub account, download [strap.sh](https://osx-strap.herokuapp.com/strap.sh), open a Terminal, and run:

    sh ~/Downloads/strap.sh

### Manual Installation

To go this route, you'll need to have already installed XCode, [Homebrew](http://brew.sh/), and probably a few other things:

    git clone https://github.com/bkeepers/dotfiles.git ~/.dotfiles
    ~/.dotfiles/script/setup
    brew bundle --global
