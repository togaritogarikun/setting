############################################################
#    execute_oG                                            #
#                                                          #
#    This shell script helps you download gnuplot 5.2.0    #
#    by oGsetting.sh.                                      #
#    Enter following command on the terminal:              #
#    % sh -c "$(curl -sSL https://raw.githubusercontent.com/togaritogarikun/setting/master/execute_oG.sh)"
############################################################
cd

git clone https://github.com/togaritogarikun/setting.git

mv setting oGsetting

cd oGsetting

chmod 777 oGsetting.sh

./oGsetting.sh
