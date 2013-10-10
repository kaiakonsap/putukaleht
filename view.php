<?php include("config.php"); ?>
<?php include("header.php"); ?>
		<div class="newsfeed2">
			<div class="news">
				<?php $id = (int) $_GET['id']; ?>
				<?php $query = mysql_query("SELECT * FROM news WHERE id='$id' ")or die (mysql_error());
				mysql_close($connect);
				$news = mysql_fetch_assoc($query);?>
				<a href="news_view.php">
					<div class="news">
						<img src="<?php echo $news['image_url'] ?>" class="newsimage">

						<p><strong> <?php echo $news['title'] ?></strong></p>

						<p class="small"><?php echo $news['date'] ?></p>

						<p><?php echo $news['content'] ?></p>

						<p class="small"><?php echo $news['author'] ?></p>
					</div>
				</a>
			</div>
		</div>
<?php include("right_panel.php")?>
	</div>
<?php include("footer.php") ?>