#!/bin/bash

t=$(which zsh)
if [[ $t == *"/zsh"* ]];
then
  echo "So you're all set up with zsh? Great! 👍🏻  Now let's get Oh My Zsh ready to go. 📈"
else
  echo "Uh-oh! 😱  It looks like you might not have zsh installed yet.
Install zsh first and make sure that running \"which zsh\" gives you something like \"/usr/local/bin/zsh\""
  exit 1
fi

if [ -e ~/.oh-my-zsh ]
then
  echo "Looks like you might already have Oh My Zsh..."
  read -r -p "Are you sure you want to continue attempting to install Oh My Zsh? 🤔   [y/N] " response
  if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
  then
      echo "Alright, let's do it! 💪🏻
      "
  else
      echo "No worries, bye! 👋🏻 "
      exit 1
  fi
fi


echo "First, we'll make a copy of your current .zshrc file if there is one, so that you can always go back to it.
The copy will be in ~/.zshrc.orig"

cp ~/.zshrc ~/.zshrc.orig

echo "✅
"

echo "Now we'll install Oh My Zsh  💻"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "✅
"

echo "Yay! You're good to go. 🎊  To customize your setup, run the customize.sh script included in this project!"
