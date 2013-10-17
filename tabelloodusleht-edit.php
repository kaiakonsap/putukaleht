<?php include ("config.php");?>
<?php include ("header.php");?>
<?php $data=mysql_query("SELECT *,quantity*price_per_unit as endprice FROM the_table")or die (mysql_error())?>

		<div id="table_div">
			<form name="input" action="insert-table-data.php" method="POST">
				<label for="name">Nimetus</label><input type="text" placeholder="Nimetus" name="name">
				<input type="text" placeholder="Kogus" name="quantity">
				<input type="text" placeholder="Ühiku hind" name="price_per_unit">
				<input type="text" placeholder="Kohaletoimetamisaeg: " name="due_time">
				<input type="submit" value="Sisesta">
			</form>
			<table>
				<thead>
				<tr>
					<th>Jrk. Nr</th>
					<th>Nimetus </th>
					<th>Võimalik tellida</th>
					<th>Ühiku hind</th>
					<th>Summa terve koguse tellimisel</th>
					<th>Kauba saamine</th>
				</tr>
				</thead>
				<tbody>

					<?php while($news_row=mysql_fetch_array($data)):?>
					<tr>
					<td><?php echo $news_row["id"]?></td>
					<td><?php echo $news_row["insect_name"]?></td>
					<td><?php echo $news_row["quantity"] ?>tk</td>
					<td><?php echo $news_row["price_per_unit"]?> kr</td>
					<td><?php echo $news_row["endprice"] ?>kr</td>
					<td>Koju toimetatakse <?php echo $news_row["due_time"]?> päevaga</td>
					</tr>
	<?php endwhile?>

				</tbody>

			</table>
		</div>


<?php include("right_panel.php")?>
	</div>
<?php include ("footer.php")?>