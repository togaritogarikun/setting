# MDEsetting
MDEsetting.sh is the shell script which constracts the Mac Development Environment in your new mac.


## Description
Packages which will be installed using this shell script are as follows:
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

The commands for the installation of additional packages (
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

If you would like to install all or part of them, please edit the downloaded shell script BEFORE you execute the shell script.


## Features
#### About gnuplot
Today (March 17, 2020), the following command

    % brew install gnuplot --with-aquaterm --with-x11

does not work well with the recent macOS when you download gnuplot.

Therefore, in this shell script, 
gnuplot will be installed not by homebrew.


If your macOS is catalina, 
you may install gnuplot by the following command without any option: 

    % brew install gnuplot

In this case, the default terminal is qt, not AquaTerm or x11.
If you would like to change the default terminal, edit ~/.gnuplot adding 'set term xxx' (xxx: name of terminal you choosed).


## Prerequisites
- sign in with your Apple ID
- git
- curl


## Installation
When you would like to set up your mac using this shell script (MDEsetting.sh), enter the following command on the terminal of your mac:

    % sh -c "$(curl -sSL https://raw.githubusercontent.com/togaritogarikun/setting/master/MDEsetting.sh)"

You will be required to enter the password of your mac, because 'make install' will be executed with 'sudo'.

#### In the case of editing shell script BEFORE executing it
Enter the following commands on the terminal of your mac, and the script file will be open automatically to edit:

    % cd

    % sh -c "$(curl -sSL https://raw.githubusercontent.com/togaritogarikun/setting/master/edit_MDEsetting.sh)"
    
then, you can edit the script file by vim.

- From command mode to insert mode, type i

- From insert mode to command mode, type Esc (escape key)

- To save edited file and quit the vim-editor, type :wq

The shell script will run by entering the following command:
    
    % ./MDEsetting.sh

## Appendix: oGsetting.sh
If you would like to download ONLY gnuplot, please use oGsetting.sh, not MDEsetting.sh.
When you download gnuplot using this shell script (oGsetting.sh), please be carefull that lua you have downloaded will be uninstalled if it exists.

#### Prerequisites
- git
- homebrew
- curl

#### Installation
Please enter the following command on the terminal of your mac:

    % sh -c "$(curl -sSL https://raw.githubusercontent.com/togaritogarikun/setting/master/oGsetting.sh)"

You will be required to enter the password of your mac, because 'make install' will be executed with 'sudo'.
