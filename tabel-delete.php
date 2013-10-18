<?php
include ("config.php");
if(isset($_POST["deleteItem"])&&is_numeric($_POST["deleteItem"]))
{var_dump($_POST["deleteItem"]);
	$del_id=$_POST["deleteItem"];
	mysql_query("DELETE FROM the_table WHERE id='$del_id'")or die(mysql_error());
}