#!/bin/bash

#################################################################################
# Script Name: backup.sh
# Author: Dobri Gospodinov
# Date Created: 12-04-2024
# Date Modified: 12-04-2024
# Description: This script asks the user what directory to backup and where to store the archive.
# Usage: ./backup.sh
#################################################################################

echo "Hello, ${USER^}"

read -p "Please enter the path of the directory you want to back up: " backup_dir

# check if directory that will be backed up exists:
if [ ! -d "$backup_dir" ]; then
    echo "Error: The specified directory does not exist or is not a directory."
    exit 1
fi

read -p "Please enter the path of the directory where you want to store the backup: " output_dir

# check if directory where the backup will be stored exists:
if [ ! -d "$output_dir" ]; then
    echo "Error: The specified directory does not exist or is not a directory."
    exit 1
fi

tar zcf "$output_dir"/my_backup_"$(date +%d-%m-%Y_%H-%M-%S)".tar.gz "$backup_dir"/* 2>/dev/null
echo "Backup Completed Successfully."
exit 0 