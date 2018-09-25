#!/bin/bash

x=1
touch userIDs.txt
while [ $x -le 30 ]
do
  userID=$(($RANDOM % 100 + 1))
  echo "$userID" >> userIDs.txt
  x=$(( $x + 1 ))
  echo "This guy just wrote a post! -  $userID"
done

