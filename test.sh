type gnuplot > /dev/null 2>&1                                                                                                                                                                               
if [ $? -eq 0 ] ; then 
    echo uninstall old gnuplot
    which gnuplot
#    brew uninstall gnuplot
fi

type lua > /dev/null 2>&1                                                                                                                                                                               
if [ $? -eq 0 ] ; then 
    echo uninstall old lua
#    brew uninstall lua
fi

#which gnuplot > /dev/null 2>&1
#if [ $? -eq 0 ] ; then
#    echo $?
##   sudo rm -f ///gnuplot
#fi
