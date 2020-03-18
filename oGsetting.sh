#################
#   oGsetting   #
#################


###########################################
# gnuplot
###########################################
#==========================================
# UNINSTALL old gnuplot & lua
#==========================================
brew update

type gnuplot > /dev/null 2>&1                                                                                                                                                                               
if [ $? -eq 0 ] ; then 
    echo uninstall old gnuplot
    brew uninstall gnuplot
fi

type lua > /dev/null 2>&1                                                                                                                                                                               
if [ $? -eq 0 ] ; then 
    echo uninstall old lua
    brew uninstall lua
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
curl -L https://sourceforge.net/projects/gnuplot/files/gnuplot/5.2.5/gnuplot-5.2.5.tar.gz/download/ > gnuplot.tar.gz
#curl -L https://sourceforge.net/projects/gnuplot/files/gnuplot/5.2.0/gnuplot-5.2.0.tar.gz/download/ > gnuplot.tar.gz
tar xvf gnuplot.tar.gz


#==========================================
# DOWNLOAD lua
#==========================================
brew install lua


#==========================================
#DOWNLOAD header files of lua
#==========================================
git clone https://github.com/lua/lua -b v5.3.5


#==========================================
# DOWNLOAD aquaterm
#==========================================
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


###########################################
# END
###########################################
