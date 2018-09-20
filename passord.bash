#!/bin/bash

x=1
touch pass.txt
while [ $x -le 100 ]
do
  passw=$(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c10)
  echo "$passw" >> pass.txt
  x=$(( $x + 1 ))
  echo "passord -  $passw"
done

