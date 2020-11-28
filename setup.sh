#
#
# RootProfile Setup.sh | Copyright (c) 2020 Mrmagicpie
#
#

echo "|---------------------------------|"
echo "|   Welcome to Mrmagicpie's root  |"
echo "|   config setup. Would you like  |"
echo "|   to proceed with this setup?   |"
echo "|                                 |"
echo "| WARNING:		        |"
echo "| This will clear all your current|"
echo "|    '/root/.bashrc' settings!    |"
echo "| Please stash all changes before |"
echo "|           you begin!	 	|"
echo "| 				|"
echo "| Please say 'y' for yes, and 'n' |"
echo "|            for no!		|"
echo "|---------------------------------|"

read yes_no

if [ "$yes_no" == "n" ] || [ "$yes_no" == "no" ]; then

	echo "|----------------|"
	echo "| Exiting setup! |"
	echo "|----------------|"

	exit

elif [ "$yes_no" != "y" ]; then

	echo "|-----------------|"
	echo "| Invalid option! |"
        echo "|-----------------|"

	exit

fi;


echo "|------------------------|"
echo "| Continuing with setup. |"
echo "|------------------------|"

sleep 1

cd /root

if [ -f /root/.bashrc ]; then
    mv .bashrc default-bashrc.ubuntu
fi;

git clone https://github.com/Mrmagicpie/RootProfile root-config
mv root-config/.bashrc ./.bashrc



echo "|---------------------------------------------|"
echo "| Finished the Mrmagicpie Root Profile setup! |"
echo "|                                             |"
echo "|        Report issues on our GitHub:         |"
echo "|   https://github.com/Mrmagicpie/RootProfile |"
echo "|---------------------------------------------|"

sleep 3

# I really like bash scripts, don't judge me


