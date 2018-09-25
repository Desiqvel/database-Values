#!/bin/bash
touch premadeCategory.php
db='$db'
sql='$sql'
echo "<?php" >> premadeCategory.php
echo "" >> premadeCategory.php
echo "" >> premadeCategory.php
while read category
do
#connect to DB
echo '$db = new PDO("mysql:host=localhost;dbname=CodeOps_database;", "root", "");' >> premadeCategory.php
#insert arguments
echo "$sql = (\"INSERT INTO Category (id, name) VALUES ('', '$category')\"); " >> premadeCategory.php
#execute
echo '$db->exec($sql);' >> premadeCategory.php
#space
echo "" >> premadeCategory.php

done < <(paste category.txt)
echo "Infro written to premadeCategory.php" 
#end connection to DB
echo 'unset($db);' >> premadeCategory.php
#end of PHP file
echo "?>" >> premadeCategory.php
