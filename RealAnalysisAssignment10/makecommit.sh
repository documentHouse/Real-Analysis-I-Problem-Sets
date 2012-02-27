#!/bin/bash
echo 'git status...'
git status -s
echo 'Enter your commit message: '
read msg
echo 'Would you like to keep the following commit message:'
echo "$msg"
echo ''
while [ true ]
do
echo "y or n (q to quit)? : "
read choice
if [ "$choice" = "y" ] ; then
	git add .
	git commit -m "$msg"
	break
elif [ "$choice" = "n" ] ; then
	echo 'Enter your commit message: '
	read msg
	echo ''
	echo 'Would you like to keep the following commit message:'
	echo "$msg"
elif [ "$choice" = "q" ] ; then
	break
else 
	echo "You made an invalid choice." 
fi
done
git push origin master
echo 'done.'
