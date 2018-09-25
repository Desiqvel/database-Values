#!/bin/bash
db='$db'
sql='$sql'
echo "<?php" >> premadePosts.php
echo "" >> premadePosts.php
echo "" >> premadePosts.php

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
topicIds[$x]=$line
 x=$(( $x + 1 ))
done < topicIDs.txt

#should use something like "${#userIDs[@]}" to get lenth instead of hardcore 149
x=0
while [ $x -le 149 ]
do
#connect to DB
echo '$db = new PDO("mysql:host=localhost;dbname=CodeOps_database;", "root", "");' >> premadePosts.php
#insert arguments
echo "$sql = (\"INSERT INTO Post (id, body, userId, topicId) VALUES ('', '${bodys[$x]}', '${userIDs[$x]}', '${topicIds[$x]}')\"); " >> premadePosts.php
#execute
echo '$db->exec($sql);' >> premadePosts.php
#space
echo "" >> premadePosts.php
  x=$(( $x + 1 ))

done

echo "Info written to premadePosts.php" 
#end connection to DB
echo 'unset($db);' >> premadePosts.php
#end of PHP file
echo "?>" >> premadePosts.php
