##############################################################
#    edit_MDEsetting                                         #
#                                                            #
#    This shell script enables you to edit MDEsetting.sh.    #
#    Enter following command on the terminal:                #
#    % sh -c "$(curl -sSL https://raw.githubusercontent.com/togaritogarikun/setting/master/edit_MDEsetting.sh)"
##############################################################
#cd

#mkdir eMDEs

#cd eMDEs

#git clone https://github.com/togaritogarikun/setting.git
curl -O https://raw.githubusercontent.com/togaritogarikun/setting/master/MDEsetting.sh

chmod 777 MDEsetting.sh

printf '\033[33m%s\033[m\n' 'Edit ~/eMDEs/MDEsetting.sh and then execute it'

vi MDEsetting.sh
