############################################################
#    execute_MDE                                           #
#                                                          #
#    This shell script helps you set up                    #
#    your Mac Development Environment by MDEsetting.sh.    #
#    Enter following command on the terminal:              #
#    % sh -c "$(curl -sSL https://raw.githubusercontent.com/togaritogarikun/setting/master/execute_MDE.sh)"
############################################################
cd

git clone https://github.com/togaritogarikun/setting.git

mv setting MDEsetting

cd MDEsetting

chmod 777 MDEsetting.sh

./MDEsetting.sh
