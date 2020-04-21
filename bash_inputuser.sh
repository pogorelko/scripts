#!/bin/bash

function inputparameters()
{

# enter User
read -p "Please enter Username: " NEWUSER
read -p "Please enter Password: " PASSWORD

}

inputparameters

# validation of data
flagValidationParameters=0

while [[ $flagValidationParameters != 1 ]]; do

	if [ -z "${NEWUSER}" ] || [ -z "${PASSWORD}" ]; then
		echo "One of required options is empty. Please Try again"
		inputparameters
	else
		flagValidationParameters=1
        
	fi
done

# trim spaces and symbols
NEWUSER=${NEWUSER//[^[:alnum:]\n\r]/}
PASSWORD=${PASSWORD//[^[:alnum:]\n\r]/}

# print test info
echo "curl -s -u ${NEWUSER}:${PASSWORD} https://testhost.com/somepath"
