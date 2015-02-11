#!/bin/bash

# Get list of files from directory

shopt -s nullglob
file_array=(*)

echo "Array items:"
for item in ${file_array[*]}
do
    printf "   %s\n" $item
    #value=$(<$item)
    echo $(cp ${item} ${item%.sh}.md)
    # echo "$value" > output.md
done
