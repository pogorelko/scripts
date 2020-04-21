#!/bin/bash

# enter User
read -p "Please enter Username: " NEWUSER
read -p "Please enter Password: " PASSWORD

# trim spaces and special symbols

NEWUSER=${NEWUSER//[^[:alnum:]\n\r]/}
PASSWORD=${PASSWORD//[^[:alnum:]\n\r]/}

# print test info
echo "curl -s -u ${NEWUSER}:${PASSWORD} https://testhost.com/somepath"
