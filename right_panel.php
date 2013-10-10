<?php include("config.php"); ?>
<?php $query=mysql_query("SELECT id,excerpt FROM news")or die (mysql_error());?>
<div class="right_panel">
	<ul class="links">
		<?php while($news_row=mysql_fetch_array($query)):?>
			<li><a href="view.php?id=<?php echo $news_row['id'] ?>"> <?php echo $news_row['excerpt']?></a></li>
		<?php endwhile?>
	</ul>
	<div id="weekly_image">
		<p>Nädala pilt</p>
		<img src="img/foto.jpg">
	</div>
</div>