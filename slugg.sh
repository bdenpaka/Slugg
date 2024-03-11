#!/bin/bash
# line break from first line of terminal
echo ""
echo "
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡿⠇⠀⣿⠁⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣧⣴⣶⣿⡀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⡄
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⠇
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⠿⠋⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀
⠀⠀⣀⣀⣤⣴⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠀⠀⠀⠀
⠐⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠁⠀⠀⠀⠀⠀⠀⠀"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀

# next echo's are line breaks
echo ""
echo ""
echo "*****PASSWD*****"
echo ""
checker=$(cat /etc/passwd | grep "$1")
if [ -z "$checker" ]
then
	echo "User doesn't exist in Passwd."
else
	cat /etc/passwd | grep $1
fi


# next echo's are line breaks
echo ""
echo ""
echo "*****SHADOW*****"
echo ""
checker=$(cat /etc/shadow | grep "$1")
if [ -z "$checker" ]
then
        echo "User doesn't exist in Shadow."
else
        cat /etc/shadow | grep $1
fi


# next echo's are line breaks
echo ""
echo ""
echo "*****SUDOERS*****"
echo ""
# cat /etc/sudoers | grep $1
# if the sudoer file doesn't have a extra command / sudo access then echo a message saying one isnt available
checker=$(cat /etc/sudoers | grep "$1")
if [ -z "$checker" ]
then
	echo "No additional access for this account."
else 
	cat /etc/sudoers | grep $1
fi

# next  echo's are line breaks
# if the user is created outside of default parameters checking to see if the user has a default $USER directory might output unwanted results
echo ""
echo ""
echo "*****GROUPS*****"
echo ""
groups $1

echo ""
echo ""
echo "*****HOME DIR*****"
echo ""
cat /home/$1
