<?php include ("config.php");?>
<?php include ("header.php");?>
<div class="newsfeed">

	<div class="the_news">
		<?php $query=mysql_query("SELECT * FROM forum_topics")or die (mysql_error());mysql_close($connect);
		while(($row[] = mysql_fetch_assoc($query))|| array_pop($row)){;}?>
		<?php foreach($row as $topics):?>
		<a href="forum_view.php?id=<?php echo $topics['id']?>">
			<div class="news">
			<img src="<?php echo $topics['image_url']?>" class="small_newsimage">
				<div class="text"><p><strong> <?php echo $topics['title']?></strong></p>
					<p  class="small"><?php echo $topics['description']?></p>
				</div>
			</div>
		</a>

			<?php endforeach;?>


	</div>
</div>
<?php include("right_panel.php")?>
</div>
<?php include ("footer.php")?>
