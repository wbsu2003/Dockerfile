#!/bin/bash

# Set defaults
USER=${WEBDRIVE_USER}
PASSWORD=${WEBDRIVE_PASSWORD}
URL=${WEBDRIVE_URL}
FOLDER_USER=${PUID:-0}

echo "$URL $USER $PASSWORD" >> /etc/davfs2/secrets

# Create user
if [ $FOLDER_USER -gt 0 ]; then
  useradd webdrive -u $FOLDER_USER -N -G users
fi

# Mount the webdaf drive 
echo "--Mount begin--"
mount -t davfs $URL /mnt/webdrive -o uid=$FOLDER_USER,gid=users,dir_mode=755,file_mode=755
echo "--Mount end--"

# Just keep this script running 
while [[ true ]]; do 
   sleep 1 
   echo "--loop--"
done
