################################################
#    execute_test                              #
#                                              #
#    This shell script tests execute_xxx.sh    #
#    % sh -c "$(curl -sSL)"    #
################################################


#####################
#    execute_MDE    #
#####################
cd

git clone https://github.com/togaritogarikun/setting.git

mv setting test_settingGit

cd test_settingGit

chmod 777 test_execute.sh

./test_execute.sh
