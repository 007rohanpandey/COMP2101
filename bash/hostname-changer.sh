#!/bin/bash
#
CUR_HOSTNAME=$(cat /etc/hostname)

# Display the current hostname
echo "The current hostname is $CUR_HOSTNAME"
echo "Enter your student ID"
read ID
NEW_HOSTNAME=pc$ID
# Change the hostname
hostnamectl set-hostname $NEW_HOSTNAME
hostname $NEW_HOSTNAME
# Display new hostname
echo "The new hostname is $NEW_HOSTNAME"
