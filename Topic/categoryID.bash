#!/bin/bash

x=1
touch categoryIDs.txt
while [ $x -le 30 ]
do
  catID=$((($RANDOM % 8) + 1))
  echo "$catID" >> categoryIDs.txt
  x=$(( $x + 1 ))
  echo "Category ID -  $catID"
done


