##################
#   MDEsetting   #
##################

###########################################                               
# CHECK prerequisties
###########################################                               
printf '\033[33m%s\033[m\n' 'Is curl available? [y/N]: '
printf '\033[33m%s\033[m\n' '(You can check it by typing following command: curl --version)'
read ANS

case $ANS in
  [Yy]* )
    ;;
  * )
    printf '\033[33m%s\033[m\n' 'Please download curl before running this shell script.'
    printf '\033[33m%s\033[m\n' 'To download it, visit following site:'
    printf '\033[33m%s\033[m\n' 'https://curl.haxx.se/download.html'
    exit
    ;;
esac


############
echo ''
printf '\033[33m%s\033[m\n' 'Have you signed in App Store with your Apple ID? [y/N]:     '
read ANS

case $ANS in
  [Yy]* )
    ;;
  * )
    printf '\033[33m%s\033[m\n' 'Please sign in.'
    printf '\033[33m%s\033[m\n' 'If you do not have Apple ID, visit following site to create it:'
    printf '\033[33m%s\033[m\n' 'https://support.apple.com/en-us/HT204316'
    exit
    ;;
esac


############
echo ''
printf '\033[33m%s\033[m\n' 'Please go to system preferences > Apple ID > Media & Purchases.'
printf '\033[33m%s\033[m\n' 'Is Never Require selected for free downloads? [y/N]: '
read ANS

case $ANS in
  [Yy]* )
    ;;
  * )
    printf '\033[33m%s\033[m\n' 'Please click Never Require for free downloads.'
    printf '\033[33m%s\033[m\n' 'This is required to use mas-cli for downloading free softwares from App Store.'
    exit
    ;;
esac


###########################################
# mac preference
###########################################
printf '\033[33m%s\033[m\n' 'setting mac preference'

# スクロールバーの表示:スクロール時に表示
#defaults write -g AppleShowScrollBars -string "WhenScrolling"

# Dock:自動的に隠さない
#defaults write com.apple.dock autohide -bool false

# Mission Control:ホットコーナー
# 左下で Mission Control
#defaults write com.apple.dock wvous-bl-corner -int 2
#defaults write com.apple.dock wvous-bl-modifier -int 0
# 右下で ディスプレイをスリープ
#defaults write com.apple.dock wvous-br-corner -int 10
#defaults write com.apple.dock wvous-br-modifier -int 0

# スリープとスクリーンセーバの解除にパスワードを要求
defaults write com.apple.screensaver askForPassword -bool true
# パスワードを要求するまでの秒数
#defaults write com.apple.screensaver askForPasswordDelay -int 5

# タップでクリックを許可
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -int 1

# カーソルの移動速度を変更 （1〜15）
defaults write -g com.apple.trackpad.scaling -float 15

# Finder で隠しファイル/フォルダを表示
#defaults write com.apple.finder AppleShowAllFiles true

# Finder で拡張子を表示
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# キーのリピート と リピート入力認識までの時間 のカスタマイズ
#defaults write -g InitialKeyRepeat -int 10
#defaults write -g KeyRepeat -int 1


###########################################
# INSTALL command line tools for xcode
###########################################
printf '\033[33m%s\033[m\n' 'installing command line tools for xcode'

xcode-select --install


###########################################
# INSTALL HomeBrew
###########################################
printf '\033[33m%s\033[m\n' 'installing homebrew'

if [ ! -x "`which brew`" ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#  brew update
fi
brew doctor
brew update  #update homebrew itself


###########################################
# INSTALL HomeBrew-Cask
###########################################
printf '\033[33m%s\033[m\n' 'installing homebrew cask'

brew tap caskroom/cask


###########################################
# INSTALL mas-cli
###########################################
printf '\033[33m%s\033[m\n' 'installing mas-cli'

if [ ! -x "`which mas`" ]; then
  brew install mas
fi


###########################################
# by mas-cli
###########################################
printf '\033[33m%s\033[m\n' 'installing packages by mas-cli'

mas install 497799835    # Xcode
#mas install 414298354    # ToyViewer
#mas install 539883307    # LINE
#mas install 803453959    # Slack
#mas install 405399194    # Kindle
#mas install 410628904    # Wunderlist
#mas install 406056744    # Evernote
#mas install 1349670778   # Mathpix


###########################################
# by homebrew
###########################################
printf '\033[33m%s\033[m\n' 'installing packages by homebrew'

##brew install gnuplot --with-aquaterm --with-x11
#brew install gnuplot
brew install gcc
#brew install tmux
brew install git
#brew install vim
#brew install nkf
#brew install imagemagick


###########################################
# by homebrew-cask
###########################################
brew cask install aquaterm
brew cask install xquartz
brew cask install mactex
#brew cask install mendeley
#brew cask install emacs
#brew cask install atom
#brew cask install google-japanese-ime
#brew cask install google-chrome
#brew cask install firefox
#brew cask install google-backup-and-sync
#brew cask install dropbox
#brew cask install adobe-acrobat-reader
#brew cask install skype
#brew cask install macs-fan-control
#brew cask install scroll-reverser
#brew cask install ccleaner
#brew cask install alfred
#brew cask install cheatsheet
#brew cask install karabiner
#brew cask install gimp
#brew cask install inkscape


###########################################
# upgrade packages installed by brew
###########################################
printf '\033[33m%s\033[m\n' 'updating installed pckages'

brew upgrade
brew cask upgrade
mas upgrade


###########################################
# download dotflies from git
###########################################
#git clone https://github.com/your_name/dotfiles.git


###########################################
# gnuplot
###########################################
#    sh -c "$(curl -sSL https://raw.githubusercontent.com/togaritogarikun/setting/master/execute_oG.sh)"
    sh -c "$(curl -sSL https://raw.githubusercontent.com/togaritogarikun/setting/master/oGsetting.sh)"

#### old2 #################################
#printf '\033[33m%s\033[m\n' 'checking if gnuplot exists'
#
#type gnuplot > /dev/null 2>&1                                                                                    
#if [ $? -eq 0 ] ; then 
#    printf '\033[33m%s\033[m\n' 'gnuplot already exists'
#    printf '\033[33m%s\033[m\n' 'end!'
#else
#    printf '\033[33m%s\033[m\n' 'gnuplot does not exist'
#    printf '\033[33m%s\033[m\n' 'start of gnuplot-download'
#    sh -c "$(curl -sSL https://raw.githubusercontent.com/togaritogarikun/setting/master/execute_oG.sh)"
#    printf '\033[33m%s\033[m\n' 'end!'
#fi


#### old1 ##################################
#printf '\033[33m%s\033[m\n' 'start of gnuplot-download'
##==========================================
## make working directory
##==========================================
#cd ~
#mkdir gnuplot_downloads
#cd gnuplot_downloads
#
#
##==========================================
## DOWNLOAD gnuplot-5.2.5
##==========================================
#printf '\033[33m%s\033[m\n' 'installing gnuplot-5.2.0'
#
#curl -L https://sourceforge.net/projects/gnuplot/files/gnuplot/5.2.5/gnuplot-5.2.5.tar.gz/download/ > gnuplot.tar.gz
##curl -L https://sourceforge.net/projects/gnuplot/files/gnuplot/5.2.0/gnuplot-5.2.0.tar.gz/download/ > gnuplot.tar.gz
#tar xvf gnuplot.tar.gz
#
#
##==========================================
## DOWNLOAD lua
##==========================================
#printf '\033[33m%s\033[m\n' 'installing lua'
#
#brew install lua
#
#
##==========================================
##DOWNLOAD header files of lua
##==========================================
#git clone https://github.com/lua/lua -b v5.3.5
#
#
##==========================================
## DOWNLOAD aquaterm
##==========================================
#printf '\033[33m%s\033[m\n' 'installing aquaterm'
#
#git clone https://github.com/mojca/aquaterm_aquaterm.git
#
#
##==========================================
## MOVE header files
##==========================================
#mv aquaterm_aquaterm AquaTerm
#mv AquaTerm ~/gnuplot_downloads/gnuplot-5.2.5/term
#mv ~/gnuplot_downloads/lua/lua.h ~/gnuplot_downloads/gnuplot-5.2.5/term
#mv ~/gnuplot_downloads/lua/luaconf.h ~/gnuplot_downloads/gnuplot-5.2.5/term
#mv ~/gnuplot_downloads/lua/lualib.h ~/gnuplot_downloads/gnuplot-5.2.5/term
#mv ~/gnuplot_downloads/lua/lauxlib.h ~/gnuplot_downloads/gnuplot-5.2.5/term
#
#
##==========================================
## MAKE
##==========================================
#printf '\033[33m%s\033[m\n' 'make & make install'
#
#cd ~/gnuplot_downloads/gnuplot-5.2.5
##CFLAGS='-I/usr/local/include' LDFLAGS='-F/Library/Frameworks' ./configure --with-readline=builtin --with-aquaterm
#CFLAGS='-I/usr/local/include' LDFLAGS='-F/Library/Frameworks' ./configure --with-readline=builtin --with-aquaterm --with-x11
#make
#sudo make install
#cd
#
#
##==========================================
## REMOVE working directory
##==========================================
#rm -rf gnuplot_downloads
#
#
#printf '\033[33m%s\033[m\n' 'end!'
###########################################
# END
###########################################
