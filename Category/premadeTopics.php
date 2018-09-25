<?php


$db = new PDO("mysql:host=localhost;dbname=databae;", "root", "");
$sql = ("INSERT INTO Category (id, name) VALUES ('', 'Technology')"); 
$db->exec($sql);

$db = new PDO("mysql:host=localhost;dbname=databae;", "root", "");
$sql = ("INSERT INTO Category (id, name) VALUES ('', 'Occupation & Education')"); 
$db->exec($sql);

$db = new PDO("mysql:host=localhost;dbname=databae;", "root", "");
$sql = ("INSERT INTO Category (id, name) VALUES ('', 'Sports')"); 
$db->exec($sql);

$db = new PDO("mysql:host=localhost;dbname=databae;", "root", "");
$sql = ("INSERT INTO Category (id, name) VALUES ('', 'Games')"); 
$db->exec($sql);

$db = new PDO("mysql:host=localhost;dbname=databae;", "root", "");
$sql = ("INSERT INTO Category (id, name) VALUES ('', 'Science')"); 
$db->exec($sql);

$db = new PDO("mysql:host=localhost;dbname=databae;", "root", "");
$sql = ("INSERT INTO Category (id, name) VALUES ('', 'Culture')"); 
$db->exec($sql);

$db = new PDO("mysql:host=localhost;dbname=databae;", "root", "");
$sql = ("INSERT INTO Category (id, name) VALUES ('', 'Society')"); 
$db->exec($sql);

$db = new PDO("mysql:host=localhost;dbname=databae;", "root", "");
$sql = ("INSERT INTO Category (id, name) VALUES ('', 'Cars & traffic')"); 
$db->exec($sql);

$db = new PDO("mysql:host=localhost;dbname=databae;", "root", "");
$sql = ("INSERT INTO Category (id, name) VALUES ('', 'Off topic')"); 
$db->exec($sql);

unset($db);
?>
