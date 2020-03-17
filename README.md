# setting
This shell script constracts the Mac Development Environment in your new pc.


## Description
Contents installed using this shell script are as follows:
- mac preference
- command line tools for xcode
- homebrew
- homebrew-cask
- mas-cli
- xcode
- gcc
- aquaterm
- xquartz
- mactex
- gnuplot5.2.5
- lua

Additional packages (
- toyviewer
- line
- slack
- kindle
- wunderlist
- evernote
- mathpix
- tmux
- vim
- nkf
- imagemagick
- mendeley
- emacs
- atom
- firefox
- dropbox
- skype
- ccleaner
- alfred3
- cheatsheet
- karabiner
- gimps
- inkscape

) are commented out. 

If you would like to install them, please edit the downloaded shell script on your local directory BEFORE execute the shell script.


## Features
### About gnuplot
Today (March 17, 2020), following command

'''

% brew install gnuplot --with-aquaterm --with-x11

'''

does not work well with the latest macOS when you download gnuplot.

Therefore, in this shell script, 
gnuplot will be installed not by homebrew.

If your macOS is catalina, 
you may install gnuplot by

'''

% brew install gnuplot

'''

but the qt will be used to display.


## Requirements
- git


## Installation
'''

% cd

% git clone https://github.com/togaritogarikun/setting.git

% chmod 777 labpc_setting.sh

% ./labpc_setting.sh

'''


### END OF README ###
