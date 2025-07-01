#!/usr/bin/env bash

set -e

echo -e "Want to move files to a directory!........\n"

SOURCE_DIR_PATH=$1
DESTINATION_DIR_PATH=$2

echo -e "Checking the directory location exist or not!..\n"

if [ -d "$SOURCE_DIR_PATH" ] && [ -d "$DESTINATION_DIR_PATH" ]; then

   echo -e "Directory location exists\n"
else
   echo "Directory Location does not  exist"
   exit 1
fi

echo -e "Verification is done!..\n"

echo -e "Let's move the directories\n"

MOVE_DIR=$(mv $SOURCE_DIR_PATH $DESTINATION_DIR_PATH)

if [ $? -eq 0 ]; then
   echo "Directories moved successfully...!"

else
   echo -e "mv operation failed..!\n Exist status: $? "
fi




