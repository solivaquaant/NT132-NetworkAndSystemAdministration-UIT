#!/bin/bash

SOURCE_DIR="/home"
BACKUP_DIR="/var/backups"
DATE=$(date +"%Y-%m-%d")
BACKUP_FILE="home-$DATE.tgz"
if [ ! -d "$BACKUP_DIR" ]; then
    echo "The directory $BACKUP_DIR does not exist. Creating the directory..."
    mkdir -p "$BACKUP_DIR"
    if [ $? -ne 0 ]; then
        echo "Failed to create the directory $BACKUP_DIR. Exiting."
        exit 1
    fi
fi
echo "Backing up the directory $SOURCE_DIR to $BACKUP_DIR/$BACKUP_FILE..."
tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR" 2>/dev/null

if [ $? -eq 0 ]; then
    echo "Backup successful! The file has been saved at $BACKUP_DIR/$BACKUP_FILE"
else
    echo "Backup failed. Please check and try again."
    exit 1
fi
