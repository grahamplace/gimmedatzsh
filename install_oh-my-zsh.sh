#!/bin/bash

echo So you set up zsh, huh? Great! Now let\'s get oh-my-zsh ready to go.

echo First, we'll make a copy of your current .zshrc file if there is one, so that you can always go back to it.
echo The copy will be in ~/.zshrc.orig
cp ~/.zshrc ~/.zshrc.orig

echo Installing oh-my-zsh...
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo Great! To customize, run the customize bash script included in this project.
