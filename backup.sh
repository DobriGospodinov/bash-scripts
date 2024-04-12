#!/bin/bash

#################################################################################
# Script Name: backup.sh
# Author: Dobri Gospodinov
# Date Created: 12-04-2024
# Date Modified: 12-04-2024
# Description: This script makes a backup of the home directory and stores it in the current directory.
# Usage: ./backup.sh
#################################################################################

echo "Hello, ${USER^}"
echo "I will now back up your home directory, ${HOME}"
echo "You are running this script from $(pwd)"
echo "Therefore, I will save the backup in $(pwd)"
tar zcf ${PWD}/my_backup_"$(date +%d-%m-%Y_%H-%M-%S)".tar.gz ~/* 2>/dev/null
echo "Backup Completed Successfully."
exit 0 