############################################################
#    execute_MDE                                           #
#                                                          #
#    This shell script helps you set up                    #
#    your Mac Development Environment by MDEsetting.sh.    #
#    Enter following command on the terminal:              #
#    % sh -c "$(curl -sSL)"    #
############################################################
cd

git clone https://github.com/togaritogarikun/setting.git

cd setting

chmod 777 MDEsetting.sh

./MDEsetting.sh
