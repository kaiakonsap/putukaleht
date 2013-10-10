<?php include("config.php"); ?>
<?php include("header.php"); ?>
<div class="newsfeed">

	<div class="the_news">
		<?php $query = mysql_query("SELECT * FROM news")or die (mysql_error());
		mysql_close($connect);
		while (($row[] = mysql_fetch_assoc($query)) || array_pop($row)) {
			;
		}?>
		<?php foreach ($row as $news): ?>
		<a href="view.php?id=<?php echo $news['id'] ?>">
			<div class="news">
				<img src="<?php echo $news['image_url'] ?>" class="small_newsimage">
				<div class="text"><p><strong> <?php echo $news['title'] ?></strong></p>
					<p class="small"><?php echo $news['date'] ?></p>
					<p><?php echo $news['excerpt'] ?></p>
					<p class="small"><?php echo $news['author'] ?></p></div>

			</div>
		</a>

			<?php endforeach; ?>


	</div>
</div>
<?php include("right_panel.php") ?>
</div>
<?php include("footer.php") ?>
