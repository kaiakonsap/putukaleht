<!-- Kõik elemendid olid natuke kehvasti taandatud. Iga element, mis asub teise sees võiks olla ühe astme võtta rohkem taandatud. Samal tasemel elemendid võiksid aga paikneva "puus" üksteise all -->
<!DOCTYPE html>
<html>
<head>
	<title>Putukasõprade leht</title>
	<meta charset="UTF-8">
	<link href="css/style.css" rel="stylesheet" type="text/css">
	<!-- Seoses CSS failide eraldi kataloogi liigutamisega, pidi siia ette lisama kataloogi nime. Samuti soovitan pildid paigutada eraldi kataloogi, näiteks "img" või "images" (tegin juba ära). -->
	<!-- <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"  rel="stylesheet" type="text/css" >
	-->
</head>
<body>
<header>
	<a href="index.php">
		<div id="brand">
		<h2 class="top">Putukahuviliste avastusportaal</h2>
		<img src="img/banner.jpg">
		<!-- Tõstsin pildid eraldi kataloogi ning seetõttu peab nende asukohaviitele lisama kataloogi (img/) -->
		</div>
	</a>
</header>

<div class="container">
	<nav class="nav1">
		<!-- Kuna menüüde puhul on tegemist linkide loeteluga, on viisakas paigutada menüü ul ja li elementide sisse. -->
		<ul>
			<li><a href="news_view.php">Uudised</a></li>
			<li><a href="table.php">E-pood</a></li>
			<li><a href="forum_index.php">Foorum</a></li>
			<li><a href="#">Live video</a></li>
			<li><a href="#">Galerii</a></li>
			<li><a href="#">Teadustöö</a></li>

		</ul>
	</nav>
	<div class="sub_container">
	<nav class="nav2">
		<!-- Kuna menüüde puhul on tegemist linkide loeteluga, on viisakas paigutada menüü ul ja li elementide sisse. -->
		<ul>
			<li><a href="news_view.php">Uudised</a></li>
			<li><a href="#">Live video</a></li>
			<li><a href="#">Galerii</a></li>
			<li><a href="forum_index.php">Foorum</a></li>
			<li><a href="#">Teadustöö</a></li>
		</ul>
	</nav>