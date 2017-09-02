#!/bin/bash

echo "
👋🏻  Hi! Glad you're making the move to a better terminal!
"

t=$(which zsh)

if [[ $t == *"/zsh"* ]]; then
  echo "Looks like you might already have zsh -- it was found in $t"
  read -r -p "Are you sure you want to continue installing zsh? 🤔   [y/N] " response
  if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
  then
      echo "Alright, let's do it! 💪🏻
      "

      echo "I'm going to back up your current .zshrc file into ~/.zshrc.orig so you can always restore it if need be."
      # Backup old .zshrc if present
      if [ -e ~/.zshrc ]
      then
        cp ~/.zshrc ~/.zshrc.orig
      fi
      echo "✅
      "
  else
      echo "No worries, bye! 👋🏻 "
      exit 1
  fi
fi


echo "Okay, first we'll install zsh via Homebrew 🍺
"

brew install zsh zsh-completions

echo "Updating your .zshrc file to activate zsh-completions"
echo "\nfpath=(/usr/local/share/zsh-completions $fpath)" >> ~/.zshrc

echo "✅
"

echo Implementing some preventative measures for \"zsh compinit: insecure directories\" warnings 🚒
chmod go-w '/usr/local/share'

echo Setting zsh as the default shell, you\'ll need to enter your password 🔒
chsh -s $(which zsh)

echo "All done! 🎉
Restart your shell and run \"echo \$SHELL\". If everything worked, you should get: \"/bin/zsh\" or something similar."
