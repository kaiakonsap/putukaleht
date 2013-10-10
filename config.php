<?php
$user="kaiakonsap";
$pass="reel7aib";
$database="kaiakonsap_putukad";
$server="localhost";
$connect=mysql_connect($server,$user,$pass) or die("Connection to server failed");
mysql_select_db($database,$connect) or die("connection to database failed");
mysql_set_charset('utf8', $connect);
