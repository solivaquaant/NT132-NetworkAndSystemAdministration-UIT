#!/bin/bash

read -p "Enter the username to check: " USERNAME
USER_INFO=$(grep "^$USERNAME:" /etc/passwd)
if [ -n "$USER_INFO" ]; then
    echo "User information for $USERNAME:"
    echo "$USER_INFO"
else
    echo "User $USERNAME does not exist"
fi
