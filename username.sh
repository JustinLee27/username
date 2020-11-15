#! /bin/bash
# username.sh
# Justin Lee 
echo "Enter a username: "
read USER
while echo "$USER" | egrep -v "^[a-z][a-z0-9_]{3,12}$" > /dev/null 2>&1
do
	echo "You must enter a valid username!"
	echo "The rules are:" 
	echo "lower case letters, digits, and underscores only."
	echo "Must start with a lower case letter."
	echo "Must be at least 3 characters but no more than 12."
	echo "Enter a username: "
	read USER
done
echo "Thank you"
