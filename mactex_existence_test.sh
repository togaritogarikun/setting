printf '\033[33m%s\033[m\n' ''
printf '\033[33m%s\033[m\n' '===================================================================='
#==== mactex
printf '\033[33m%s\033[m\n' 'checking if mactex is downloaded >'
type platex > /dev/null 2>&1                                                                                         
if [ $? -eq 0 ] ; then 
    printf '\033[33m%s\033[m\n' 'mactex is successfully downloaded!'
else
    printf '\033[33m%s\033[m\n' 'unfortunately, mactex is NOT downloaded with any trouble... >'
    printf '\033[33m%s\033[m\n' 'please execute following command to install matex:'
    printf '\033[33m%s\033[m\n' ''
    printf '\033[33m%s\033[m\n' 'brew cask install mactex'
fi
