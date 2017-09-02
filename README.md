# gimmedatzsh
An attempt to make it easier to port my preferred terminal setup to new machines

## Prerequisites
The Installation Instructions below assumes you have both git and Homebrew installed on your computer. Also, you have to be running a linux-based machine.

## Installation Instructions
First, clone this repo onto your local machine:

`git clone https://github.com/grahamplace/gimmedatzsh.git`

### Zsh
If you don't yet have Zsh installed:

`bash install_zsh.sh`

Follow the prompts to install Zsh on your machine.

### Oh My Zsh
If you don't yet have Oh My Zsh installed:
`bash install_oh-my-zsh.sh`

Follow the prompts to install Oh My Zsh on your machine.

### Customize
To customize your terminal setup:
`bash customize.sh`

Follow the prompts to customize your setup as desired.

After running the customization script, you'll need to add your desired plugins to your .zshrc file manually. This file should be in your home directory; open `~/.zshrc` with your favorite text editor.

Add any plugins you want to use to the .zshrc file, for example:
`plugins=(zsh-syntax-highlighting zsh-autosuggestions git)`

### iTerm
Download and install iTerm2: http://iterm2.com/downloads.html

Open iTerm, and go to Preferences → Profiles → Colors

Choose your preferred theme from the Color Presets dropdown in the bottom right. I personally like using Dark Background, but Solarized Dark works well with the agnoster Zsh theme as well.


Now, go to Preferences → Profiles → Text → Change Font

Choose your desired font and size. If you chose to install a Powerline font during the customize.sh script, this is a great time to choose one. I prefer 12 pt. Meslo LG M Regular for Powerline.

🎉 That's all! Open a new shell via iTerm and enjoy your sweet new setup! 
