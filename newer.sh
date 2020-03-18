#!/bin/bash

newest_file=$1
newest_inode=$(ls -i "$newest_file" | awk '{print $1}')

for file in "$@"; do
   inode=$(ls -i "$file" | awk '{print $1}')
 if test $inode -gt $newest_inode; then
   newest_file=$file
   newest_inode=$inode
 fi
done

echo "the newest file is $newest_file"





 
 
