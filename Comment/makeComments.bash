#!/bin/bash
db='$db'
sql='$sql'
echo "<?php" >> premadeComments.php
echo "" >> premadeComments.php
echo "" >> premadeComments.php

x=0
while IFS='' read -r line || [[ -n "$line" ]]; do
bodys[$x]=$line
 x=$(( $x + 1 ))
done < body.txt

x=0
while IFS='' read -r line || [[ -n "$line" ]]; do
userIDs[$x]=$line
 x=$(( $x + 1 ))
done < userIDs.txt

x=0
while IFS='' read -r line || [[ -n "$line" ]]; do
postIDs[$x]=$line
 x=$(( $x + 1 ))
done < postIDs.txt

#should use something like "${#userIDs[@]}" to get lenth instead of hardcore 149
x=0
while [ $x -le 149 ]
do
#connect to DB
echo '$db = new PDO("mysql:host=localhost;dbname=databae;", "root", "");' >> premadeComments.php
#insert arguments
echo "$sql = (\"INSERT INTO Comment (id, postID, userId, body) VALUES ('', '${postIDs[$x]}', '${userIDs[$x]}', '${bodys[$x]}')\"); " >> premadeComments.php
#execute
echo '$db->exec($sql);' >> premadeComments.php
#space
echo "" >> premadeComments.php
  x=$(( $x + 1 ))

done

echo "Info written to premadeComments.php" 
#end connection to DB
echo 'unset($db);' >> premadeComments.php
#end of PHP file
echo "?>" >> premadeComments.php
