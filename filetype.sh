#!/usr/bin/bash
if [ $# -ne 1 ]; then
  echo "usage $0 [directory] [new_extension]"
  exit 1
fi 

DIR="$1"
EXT="$2"

for file in "$DIR"/*; do 
  if [ -f "$file" ]; then 
    mv -- "$file" "${file%.*}.$EXT"
  fi 
done
