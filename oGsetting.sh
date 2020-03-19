#################
#   oGsetting   #
#################


###########################################
# gnuplot
###########################################
#==========================================
# UNINSTALL old gnuplot & lua
#==========================================
printf '\033[33m%s\033[m\n' 'updating homebrew'
brew update

printf '\033[33m%s\033[m\n' 'checking if gnuplot exists'

type gnuplot > /dev/null 2>&1                                                                                                                                                                               
if [ $? -eq 0 ] ; then 
    printf '\033[33m%s\033[m\n' 'gnuplot already exits'
    printf '\033[33m%s\033[m\n' 'end!'
    exit
#    printf '\033[33m%s\033[m\n' 'uninstalling old gnuplot'
#    brew uninstall gnuplot
else
    printf '\033[33m%s\033[m\n' 'gnuplot does not exist'
    printf '\033[33m%s\033[m\n' 'start of gnuplot downloading'
fi

printf '\033[33m%s\033[m\n' 'checking if lua exists'

type lua > /dev/null 2>&1                                                                                                                                                                               
if [ $? -eq 0 ] ; then 
    printf '\033[33m%s\033[m\n' 'uninstalling old lua'
#    echo uninstall old lua
    brew uninstall lua
else
    printf '\033[33m%s\033[m\n' 'lua does not exist'
fi


#==========================================
# make working directory
#==========================================
cd ~
mkdir gnuplot_downloads
cd gnuplot_downloads


#==========================================
# DOWNLOAD gnuplot-5.2.5
#==========================================
printf '\033[33m%s\033[m\n' 'downloading gnuplot-5.2.0'

curl -L https://sourceforge.net/projects/gnuplot/files/gnuplot/5.2.5/gnuplot-5.2.5.tar.gz/download/ > gnuplot.tar.gz
#curl -L https://sourceforge.net/projects/gnuplot/files/gnuplot/5.2.0/gnuplot-5.2.0.tar.gz/download/ > gnuplot.tar.gz
tar xvf gnuplot.tar.gz


#==========================================
# DOWNLOAD lua
#==========================================
printf '\033[33m%s\033[m\n' 'installing lua'

brew install lua


#==========================================
#DOWNLOAD header files of lua
#==========================================
git clone https://github.com/lua/lua -b v5.3.5


#==========================================
# DOWNLOAD aquaterm
#==========================================
printf '\033[33m%s\033[m\n' 'installing aquaterm'

git clone https://github.com/mojca/aquaterm_aquaterm.git


#==========================================
# MOVE header files
#==========================================
mv aquaterm_aquaterm AquaTerm
mv AquaTerm ~/gnuplot_downloads/gnuplot-5.2.5/term
mv ~/gnuplot_downloads/lua/lua.h ~/gnuplot_downloads/gnuplot-5.2.5/term
mv ~/gnuplot_downloads/lua/luaconf.h ~/gnuplot_downloads/gnuplot-5.2.5/term
mv ~/gnuplot_downloads/lua/lualib.h ~/gnuplot_downloads/gnuplot-5.2.5/term
mv ~/gnuplot_downloads/lua/lauxlib.h ~/gnuplot_downloads/gnuplot-5.2.5/term


#==========================================
# MAKE
#==========================================
printf '\033[33m%s\033[m\n' 'make & make install'

cd ~/gnuplot_downloads/gnuplot-5.2.5
#CFLAGS='-I/usr/local/include' LDFLAGS='-F/Library/Frameworks' ./configure --with-readline=builtin --with-aquaterm
CFLAGS='-I/usr/local/include' LDFLAGS='-F/Library/Frameworks' ./configure --with-readline=builtin --with-aquaterm --with-x11
make
sudo make install
cd


#==========================================
# REMOVE working directory
#==========================================
rm -rf gnuplot_downloads


printf '\033[33m%s\033[m\n' 'end!'
###########################################
# END
###########################################
