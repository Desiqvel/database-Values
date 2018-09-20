#!/bin/bash

x=1
hot="@hotmail.com"
gmai="@gmail.com"
out="@online.com"
filename="navn.txt"

 touch email.txt
while IFS='' read -r line || [[ -n "$line" ]]; do
let "tall = $x % 3"
  if [ $tall -eq 0 ]
then
mail="$hot"
  elif [ $tall -eq 1 ]
then
mail="$gmai"
elif [ $tall -eq 2 ]
then
mail="$out"
else
mail="$hot"
fi


  dato=$(< /dev/urandom tr -dc 5-9 | head -c2)
  email="$line$dato$mail" 
  echo "$email" >> email.txt

  echo "email -  $email"
 x=$(( $x + 1 ))
done < "$filename"

