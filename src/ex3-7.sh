#!/bin/bash

echo "Enter file name:"
read file_name

mkdir "$file_name"

cd "$file_name" || exit

for i in {1..5}; do
  touch "file$i.txt"
done

for i in {1..5}; do
  subfolder_name="$file_name-$i"
  mkdir "$subfolder_name"
  ln -s "../file$i.txt" "$subfolder_name/file$i.txt"
done

echo "Process completed. Files and folders created."
