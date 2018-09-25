#!/bin/bash

x=1
while [ $x -le 150 ]
do
  topID=$((($RANDOM % 30) + 1))
  echo "$topID" >> topicIDs.txt
  x=$(( $x + 1 ))
  echo "Topic ID -  $topID"
done


