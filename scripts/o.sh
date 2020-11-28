

#if [ "$1" != "h" ]; then

#fi;

if [ "$1" = "o" ]; then

	if [ "$2" = "p" ]; then

		echo " "
		echo " o o p "
		echo " "

		exit

	fi


elif [ "$1" = "h" ]; then

	echo " "
	echo " o h "
	echo " "

	exit

fi

echo " "
echo "Invalid option!"
echo " "

exit
