#!/bin/bash

x=1
while [ $x -le 150 ]
do
  postID=$((($RANDOM % 150) + 1))
  echo "$postID" >> postIDs.txt
  x=$(( $x + 1 ))
  echo "Post ID -  $postID"
done


