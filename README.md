# MDEsetting
MDEsetting.sh is the shell script which constracts the Mac Development Environment in your new mac.


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

The commands for the installation of additional contents (
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

If you would like to install them, please edit the downloaded shell script on your local directory BEFORE you execute the shell script.


## Features
#### About gnuplot
Today (March 17, 2020), following command

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


## Installation
When you would like to set up your mac using this shell script, enter following commands on the terminal of your mac:

    % sh -c "$(curl -sSL https://raw.githubusercontent.com/togaritogarikun/setting/master/execute_MDE.sh)"

You will be required to enter the password of your mac, because 'make install' will be executed with 'sudo'.


## Appendix: oGsetting.sh
If you would like to download ONLY gnuplot, please use oGsetting.sh, not MDEsetting.sh.
Please be careful that oGsetting.sh sets up the environment for gnuplot, after it UNINSTALLS old gnuplot and lua you have downloaded on your mac, using homebrew (e.g. % brew uninstall gnuplot).

#### Prerequisites
- git
- homebrew

#### Installation
In the case of downloading only oGsetting.sh:

    % 

You will be required to enter the password of your mac, because 'make install' will be executed with 'sudo'.
