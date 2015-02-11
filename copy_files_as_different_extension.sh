#!/bin/bash

# Get list of files from directory

shopt -s nullglob
file_array=(*)

echo "Array items:"
for item in ${file_array[*]}
do
    echo "Coping: " $item

    echo $(cp ${item} ${item%.sh}.md)

    echo "Created: " ${item%.sh}.md
done
