#!/bin/bash
touch userinfoall.php
db='$db'
sql='$sql'
echo "<?php" >> userinfoall.php
echo "" >> userinfoall.php
echo "" >> userinfoall.php
while read usernames names surnames emails pass
do
#connect to DB
echo '$db = new PDO("mysql:host=localhost;dbname=CodeOps_database;", "root", "");' >> userinfoall.php
#insert arguments
echo "$sql = (\"INSERT INTO User (id, username, password, email, name, surname, active, admin) VALUES ('', '$usernames', '$pass', '$emails', '$names', '$surnames', 0, 0)\"); " >> userinfoall.php
#execute
echo '$db->exec($sql);' >> userinfoall.php
#space
echo "" >> userinfoall.php

done < <(paste usernames.txt navn.txt surname.txt email.txt pass.txt)
echo "Infro written to userinfoall.php" 
#end connection to DB
echo 'unset($db);' >> userinfoall.php
#end of PHP file
echo "?>" >> userinfoall.php
