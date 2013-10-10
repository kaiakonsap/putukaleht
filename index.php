<?php include ("config.php");?>
<?php include ("header.php");?>
	<?=$query=mysql_query("SELECT * FROM common_pages")or die (mysql_error());
	mysql_close($connect);
	$result= mysql_fetch_assoc($query);?>
<?=$result["content"]?>
	<?php include("right_panel.php")?>
</div>
<?php include ("footer.php");?>

