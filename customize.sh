#!/bin/bash

echo "
Cool, it's time to customize our zsh setup! 😎

A couple of notes before we get started:

1. We'll install some basic stuff now, but whenever you want to update your own configuration, you'll either be
    updating your ~/.zshrc file or the files in ~/.oh-my-zsh/custom

2. Any files (theme.zsh, git_aliases.zsh, etc) that are modified in this script will backup any existing files of the same name first.
    If you want to go back, just delete the file added during this setup, and chage the backup name from some_file.zsh.orig back to some_file.zsh

3. Lots of info about customizing Oh My Zsh can be found on their wiki:
    https://github.com/robbyrussell/oh-my-zsh/wiki/Customization#overriding-and-adding-plugins


Alright, let's get started! 🔥

"

####### INSTALL AUTO-SUGGESTIONS #######
read -r -p "▶️  Do you want to install auto-suggestions? (You should, it's awesome) [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
then
  if [ -e ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]
  then
    echo "
         Looks like you already have the autosuggesstions plugin installed! Moving right along..."
  else
    git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
  fi
fi

echo "✅
"


####### INSTALL SYNTAX-HIGHLIGHTING #######
read -r -p "▶️  Do you want to install syntax-highlighting? (Trust me, you should) [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
then
  if [ -e ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]
  then
    echo "
         Looks like you already have the autosuggesstions plugin installed! Moving right along..."
  else
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
  fi
fi

echo "✅
"

####### THEME #######
read -r -p "▶️  What custom theme would you like to install?
Pick from the Oh My Zsh theme wiki: https://github.com/robbyrussell/oh-my-zsh/wiki/themes

I highly recommend agnoster.

Type chosen theme name:  " response
# Remove old theme.zsh if present
if [ -e theme.zsh ]
then
  rm theme.zsh
fi
echo Great choice! Adding $response as your zsh theme...
echo "# Updates the zsh theme" >> theme.zsh
echo ZSH_THEME=\"$response\" >> theme.zsh

echo "✅
"


# Backup old theme.zsh if present
if [ -e ~/.oh-my-zsh/custom/theme.zsh ]
then
  cp ~/.oh-my-zsh/custom/theme.zsh ~/.oh-my-zsh/custom/theme.zsh.orig
fi
cp theme.zsh ~/.oh-my-zsh/custom


####### ADD ALIASES #######
read -r -p "▶️  Do you want to include some basic (but quite useful) git aliases? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
then
  # Backup old theme.zsh if present
  if [ -e ~/.oh-my-zsh/custom/git_aliases.zsh ]
  then
    cp ~/.oh-my-zsh/custom/git_aliases.zsh ~/.oh-my-zsh/custom/git_aliases.zsh.orig
  fi
  cp git_aliases.zsh ~/.oh-my-zsh/custom
fi

echo "✅
"

####### ADD RBENV #######
read -r -p "▶️  If you use rbenv, do you want to add the default PATH shim? (the bit you had to add to your .bash_profile when you installed rbenv) [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
then
  # Backup old rbenv.zsh if present
  if [ -e ~/.oh-my-zsh/custom/rbenv.zsh ]
  then
    cp ~/.oh-my-zsh/custom/rbenv.zsh ~/.oh-my-zsh/custom/rbenv.zsh.orig
  fi
  cp rbenv.zsh ~/.oh-my-zsh/custom
fi

echo "✅
"

####### ADD CUSTOM FONTS #######
read -r -p "▶️  Do you want to use awesome Powerline fonts? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
then
  echo "
       Sweet, installing from GitHub...
       "
  # clone
  git clone https://github.com/powerline/fonts.git --depth=1
  # install
  cd fonts
  ./install.sh
  # clean-up a bit
  cd ..
  rm -rf fonts
fi

echo "✅
"

echo "
🎉  All done! Remember to complete the setup steps in the readme (just a couple tweaks to iTerm), restart your shell, and enjoy your super slick new setup! 🎉
"
