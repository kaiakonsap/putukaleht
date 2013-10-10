<?php include("config.php"); ?>
<?php include("header.php"); ?>
	<div class="newsfeed2">
		<div class="news">
			<?php $id = (int) $_GET['id']; ?>
			<?php $query = mysql_query("SELECT * FROM forum_posts WHERE topic_id='$id' ")or die (mysql_error());
				while (($posts[] = mysql_fetch_assoc($query)) || array_pop($posts)) {
					;
				};
			$post_id=$posts[0]['id'];
			$query2 = mysql_query("SELECT * FROM forum_comments WHERE forum_posts_id='$post_id' ")or die (mysql_error());
			mysql_close($connect);
			?>
			<a href="#">
				<div class="news">
					<?php foreach($posts as $post):?>
					<p><strong> <?php echo $post['posts_title'] ?></strong></p>
					<p class="small"><?php echo $post['posts_timestamp'] ?></p>
					<p><?php echo $post['posts_content'] ?></p>
					<p class="small"><?php echo $post['posts_author'] ?></p>
				<?php endforeach?>
				</div>
			</a>
		</div>
	</div>
<?php include("right_panel.php")?>
	</div>
<?php include("footer.php") ?>