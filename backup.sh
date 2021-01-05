#!/bin/bash

clear

# Time stamp
timestamp=$(date +"%Y-%m-%dT%H:%M:%S%z")

#Folders
dest=~/backups
sauce=~/Pictures

if [ -d $dest ]; then
echo "Backup folder exits"
else
echo "Backup folder does not exist! I'm now creating it..."; (mkdir -p $dest)
echo
fi
read -p "Press any key to continue..." -n1 -s
mkdir -p $dest/$timestamp

clear
echo "Now backing up. Please wait..."
tar cvfz $dest/$timestamp/pictures-backup.tgz $sauce
clear 
echo "Backup complete. Go to the /backups folder in order to see your compressed file."






