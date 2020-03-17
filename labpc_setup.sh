###########################################
# システム環境設定
###########################################

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

# Finder:隠しファイル/フォルダを表示
#defaults write com.apple.finder AppleShowAllFiles true

# Finder:拡張子を表示
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# キーのリピート と リピート入力認識までの時間 のカスタマイズ
#defaults write -g InitialKeyRepeat -int 10
#defaults write -g KeyRepeat -int 1


###########################################
# command line tools for xcode のインストール
###########################################
xcode-select --install


###########################################
# HomeBrewのインストール
###########################################
if [ ! -x "`which brew`" ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
fi


###########################################
# HomeBrew-Caskのインストール
###########################################
brew tap caskroom/cask


###########################################
# mas-cliのインストール
###########################################
if [ ! -x "`which mas`" ]; then
  brew install mas
fi


###########################################
# by mas-cli
###########################################
mas install 497799835 # Xcode
#mas install 414298354 #ToyViewer
#mas install 539883307 # LINE
#mas install 803453959 # Slack
#mas install 405399194 # Kindle
#mas install 410628904 # Wunderlist
#mas install 406056744 # Evernote
#mas install 1349670778 #Mathpix


###########################################
# by homebrew
###########################################
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
# download dotflies from git
###########################################
#git clone https://github.com/your_name/dotfiles.git


###########################################
# gnuplot
###########################################
#====================
# 環境構築用ディレクトリの作成
#====================
cd ~
mkdir gnuplot_downloads
cd gnuplot_downloads


#====================
# gnuplot-5.2.5 のダウンロード
#====================
curl -L https://sourceforge.net/projects/gnuplot/files/gnuplot/5.2.5/gnuplot-5.2.5.tar.gz/download/ > gnuplot.tar.gz
#curl -L https://sourceforge.net/projects/gnuplot/files/gnuplot/5.2.0/gnuplot-5.2.0.tar.gz/download/ > gnuplot.tar.gz
tar xvf gnuplot.tar.gz


#====================
# lua のダウンロード
#====================
brew install lua


#====================
# lua のヘッダファイルのダウンロード
#====================
git clone https://github.com/lua/lua -b v5.3.5


#====================
# Aqua のダウンロード
#====================
git clone https://github.com/mojca/aquaterm_aquaterm.git


#====================
# ヘッダファイルの移動
#====================
mv aquaterm_aquaterm AquaTerm
mv AquaTerm ~/gnuplot_downloads/gnuplot-5.2.5/term
mv ~/gnuplot_downloads/lua/lua.h ~/gnuplot_downloads/gnuplot-5.2.5/term
mv ~/gnuplot_downloads/lua/luaconf.h ~/gnuplot_downloads/gnuplot-5.2.5/term
mv ~/gnuplot_downloads/lua/lualib.h ~/gnuplot_downloads/gnuplot-5.2.5/term
mv ~/gnuplot_downloads/lua/lauxlib.h ~/gnuplot_downloads/gnuplot-5.2.5/term


#====================
# make
#====================
cd ~/gnuplot_downloads/gnuplot-5.2.5
#CFLAGS='-I/usr/local/include' LDFLAGS='-F/Library/Frameworks' ./configure --with-readline=builtin --with-aquaterm
CFLAGS='-I/usr/local/include' LDFLAGS='-F/Library/Frameworks' ./configure --with-readline=builtin --with-aquaterm --with-x11
make
sudo make install
cd


#====================
# gnuplot_downloads を消す
#====================
rm -rf gnuplot_downloads
