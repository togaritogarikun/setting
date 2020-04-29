# MDEsetting（mac の環境設定と gnuplot のインストール）
MDEsetting.sh is the shell script which constracts the Mac Development Environment in your new or initialized mac.

With the default MDEsetting.sh, you will be able to use: homebrew, mas-cli, git, gcc compiler, Tex, and gnuplot. 

:baby_chick: Description
========================
Packages which will be installed using this shell script are as follows:
- mac preference
- command line tools for xcode
- homebrew
- homebrew-cask
- mas-cli
- git
- gcc
- aquaterm
- xquartz
- mactex
- gnuplot5.2.5
- lua

Commands for the installation of additional packages (
- xcode
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

If you would like to install all or part of them, please edit the downloaded shell script BEFORE you execute it.

See [Installation](#black_small_square-In-the-case-of-editing-shell-script-BEFORE-executing-it) for more information, in such case.

Please note that applications you have never downloaded with Aplle ID you are seeking to use now can not be installed by the mas-cli (April 27, 2020). 
In such case, please install them from the App Store for the first time.


:baby_chick: Features
=====================
#### :black_small_square: About gnuplot
Today (March 17, 2020), the following command

    % brew install gnuplot --with-aquaterm --with-x11

does not work well with the recent macOS when you download gnuplot.

Therefore, in this shell script, 
the older version of gnuplot (5.2.5) will be installed not by homebrew.


If your macOS is catalina, 
you may install gnuplot by the following command without any option: 

    % brew install gnuplot

In this case, the default terminal is qt, not AquaTerm or x11.
If you would like to change the default terminal, edit ~/.gnuplot adding 'set term xxx' (xxx: name of terminal you choosed).


:baby_chick: Prerequisites
==========================
- curl
- sign in with your Apple ID

If you would like to use mas-cli,

- go to system preferences > Apple ID > Media & Purchases, and click "Never Require" for free downloads. (this is required to use mas-cli for downloading free softwares from App Store).


:baby_chick: Installation
=========================
#### :black_small_square: In the case of using shell script by default
When you would like to set up your mac using this shell script (MDEsetting.sh) in the default form, enter the following command on the terminal of your mac:

    % sh -c "$(curl -sSL https://raw.githubusercontent.com/togaritogarikun/setting/master/MDEsetting.sh)"

You will be sometimes required to enter the password of your mac, because 'make install' will be executed with 'sudo'.

#### :black_small_square: In the case of editing shell script BEFORE executing it
Enter the following commands on the terminal of your mac, and the script file will be open automatically to edit:

    % cd

    % sh -c "$(curl -sSL https://raw.githubusercontent.com/togaritogarikun/setting/master/edit_MDEsetting.sh)"
    
then, you can edit the script file by vim:

- From command mode to insert mode, type **i**

- From insert mode to command mode, type **Esc** key

- To save edited file and quit the vim-editor, type **:wq** and press **Enter** key

The shell script will be run by entering the following command:
    
    % ./MDEsetting.sh

:baby_chick: Appendix: oGsetting.sh
===================================
If you would like to install ONLY gnuplot, please use oGsetting.sh, not MDEsetting.sh.

#### :black_small_square: Prerequisites
- curl
- homebrew

#### :black_small_square: Installation
Please enter the following command on the terminal of your mac:

    % sh -c "$(curl -sSL https://raw.githubusercontent.com/togaritogarikun/setting/master/oGsetting.sh)"

You will be sometimes required to enter the password of your mac, because 'make install' will be executed with 'sudo'.
