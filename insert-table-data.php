<?php include ("config.php");?>
<?php if (isset($_POST)&&!empty($_POST)){
	$name=$_POST['name'];
	$quantity=$_POST['quantity'];
	$price_per_unit=$_POST['price_per_unit'];
	$due_time=$_POST['due_time'];
	$insert=mysql_query("INSERT INTO the_table (insect_name, price_per_unit, quantity,due_time)
VALUES ('$name', '$price_per_unit','$quantity','$due_time')")or die(mysql_error());
	 mysql_close($connect);
	header('Location: index.php');
}?>
<?php include ("header.php");?>
<?php include("right_panel.php")?>
	</div>
<?php include ("footer.php")?>