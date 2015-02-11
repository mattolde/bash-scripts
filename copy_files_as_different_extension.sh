#!/bin/bash

# Get list of files from directory

dirlist=($(ls | grep \.ft))

echo "Array items:"

for item in ${dirlist[*]}
do
    echo "Coping: " ${item}

    echo "cp ${item} /Users/matthewolde/Dropbox/notes/${item%.ft}.md"

    echo $(cp ${item} /Users/matthewolde/Dropbox/notes/${item%.ft}.md)

    echo "Created: " ${item%.ft}.md
done
