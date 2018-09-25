#!/bin/bash

x=1
touch userIDs.txt
while [ $x -le 150 ]
do
  userID=$(($RANDOM % 100 + 1))
  echo "$userID" >> userIDs.txt
  x=$(( $x + 1 ))
  echo "This guy just wrote a commented a topic! -  $userID"
done

