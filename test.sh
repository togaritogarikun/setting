type ggnuplot > /dev/null 2>&1                                                                                                                         
if [ $? -eq 0 ] ; then
    printf '\033[33m%s\033[m\n' 'gnuplot exists'
else
    printf '\033[33m%s\033[m\n' 'gnuplot does not exist'
fi
