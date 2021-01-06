#!/bin/bash

clear

# Time stamp
timestamp=$(date +"%Y-%m-%dT%H:%M:%S%z")

#Folders
dest=~/backups
sauce=~/Pictures #Change this folder to whichever directory you would like to backup

# Check if the backup folder exists in the home directory, if not create one
if [ -d $dest ]; then
  echo "Backup folder exits"
else
  echo "Backup folder does not exist! I'm now creating it..."; (mkdir -p $dest)
  echo
fi

read -p "Press any key to continue..." -n1 -s

# Make new directory inside backups folder with timestamp of backup, clear screen, inform user backup is taking place
mkdir -p $dest/$timestamp
clear
echo "Now backing up. Please wait..."

# Create a compressed tar file in backups/timestamp 
tar cvfz $dest/$timestamp/backup.tgz $sauce

# Clear screen, inform user the backup has been completed
clear 
echo "Backup complete. Go to the /backups folder in order to see your compressed file."






