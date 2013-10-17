<?php
$user="root";
$pass="";
$database="loodusleht";
$server="127.0.0.1";
$connect=mysql_connect($server,$user,$pass) or die("Connection to server failed");
mysql_select_db($database,$connect) or die("connection to database failed");
mysql_set_charset('utf8', $connect);
