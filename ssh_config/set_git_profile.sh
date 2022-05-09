#!/bin/bash

default_name="Sai Rahul Kodumuru"
default_email="ksairahul15@gmail.com"

username=""
useremail=""

# Accept the Parameters
echo "Running the Git Profile Setup Parameters...."
echo ">> ${default_name} (or) Enter the user name: "
read entry_username
echo ">> ${default_email} (or) Enter the user email: "
read entry_useremail

# Check if the user has entered the values
if [ -z "${entry_username}" ]; then
    username="${default_name}"
else
    username="${entry_username}"
fi

# Check if the user has entered the values
if [ -z "${entry_useremail}" ]; then
    useremail="${default_email}"
else
    useremail="${entry_useremail}"
fi

userNameCommand="git config --local user.name \"${username}\" "
userEmailCommand="git config --local user.email \"${useremail}\" "


echo "Setting the Git Profile Setup.... using the following commands:"
echo ">> $userNameCommand"
echo ">> $userEmailCommand"

eval "${userNameCommand}"
if [ $? -eq 0 ]; then
    echo "Git User Name is set to `git config --local user.name`"
else
    echo "Git User Name is not set"
    exit 1
fi

eval "${userEmailCommand}"
if [ $? -eq 0 ]; then
    echo "Git User Email is set to `git config --local user.email`"
else
    echo "Git User Email is not set"
    exit 1
fi
