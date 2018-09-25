#!/bin/bash
db='$db'
sql='$sql'
echo "<?php" >> premadeTopics.php
echo "" >> premadeTopics.php
echo "" >> premadeTopics.php

x=0
while IFS='' read -r line || [[ -n "$line" ]]; do
titles[$x]=$line
 x=$(( $x + 1 ))
done < titles.txt

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
categoryIDs[$x]=$line
 x=$(( $x + 1 ))
done < categoryIDs.txt

x=0
while [ $x -le 29 ]
do
#connect to DB
echo '$db = new PDO("mysql:host=localhost;dbname=CodeOps_database;", "root", "");' >> premadeTopics.php
#insert arguments
echo "$sql = (\"INSERT INTO Topicv2 (id, title, body, userID, categoryId) VALUES ('', '${titles[$x]}', '${bodys[$x]}', '${userIDs[$x]}', '${categoryIDs[$x]}')\"); " >> premadeTopics.php
#execute
echo '$db->exec($sql);' >> premadeTopics.php
#space
echo "" >> premadeTopics.php
  x=$(( $x + 1 ))

done

echo "Info written to premadeTopics.php" 
#end connection to DB
echo 'unset($db);' >> premadeTopics.php
#end of PHP file
echo "?>" >> premadeTopics.php
