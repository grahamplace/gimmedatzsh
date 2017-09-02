#!/bin/bash

echo Installing zsh via Homebrew...

brew install zsh zsh-completions

echo Adding to .zshrc to activate completions...
echo "\nfpath=(/usr/local/share/zsh-completions $fpath)" >> ~/.zshrc

echo Preventative measures for \"zsh compinit: insecure directories\" warnings...
chmod go-w '/usr/local/share'

echo Setting zsh as the default shell, you\'ll need to enter your password...
chsh -s $(which zsh)

echo Great! Log out and log back in. Run \"echo $SHELL\". If everything worked, you should get: "/bin/zsh" or similar.
