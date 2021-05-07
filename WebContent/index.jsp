<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport"    content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author"      content="Sergey Pozhilov (GetTemplate.com)">
	
	<title>Votre boutique est en ligne !</title>

	<link rel="shortcut icon" href="assets/images/gt_favicon.png">
	
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">

	<!-- Custom styles for our template -->
	<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen" >
	<link rel="stylesheet" href="assets/css/main.css">

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
<!----------------------------------------------------------------------------------------------------------->
<!-- NAVBAR -->
<!----------------------------------------------------------------------------------------------------------->
	<jsp:include page="navbar.jsp">
            <jsp:param name="year" value="2010"/>
    </jsp:include>
	<!-- /.navbar -->
 
<!----------------------------------------------------------------------------------------------------------->
<!-- CONTAINER-->
<!----------------------------------------------------------------------------------------------------------->
 
	<!-- Header -->
	<header id="head">
		<div class="container">
			<div class="row">
				<h1 class="lead" style="color:black";>Bienvenue sur votre boutique en ligne</h1>
				<p><a class="btn btn-default btn-lg" role="button">Plus d'informations</a> <a class="btn btn-action btn-lg" role="button" href="signinMedecin.html">Se connecter</a></p>
			</div>
		</div>
	</header>
	<!-- /Header -->

	<!-- Intro -->
	<div class="container text-center">
		<br> <br>
		<h2 class="thin">Styli</h2>
		<p class="text-muted">
			Votre boutique est pr�sente en ligne .
		</p>
	</div>
	<!-- /Intro-->
		
	<!-- Highlights - jumbotron -->
	<div class="jumbotron top-space">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6 highlight">
					<div class="h-caption"><h4><i class="fa fa-cogs fa-5"></i>Qui sommes-nous?</h4></div>
					<div class="h-body text-center">
						<p>Styli est une plateforme internationale de vente de v�tements en ligne de type B2C. La soci�t� se sp�cialise principalement dans le pr�t-�-porter pour femme, mais elle propose �galement des v�tements pour hommes </p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 highlight">
					<div class="h-caption"><h4><i class="fa fa-flash fa-5"></i>Livraison </h4></div>
					<div class="h-body text-center">
						<p> Le temps d'exp�dition est estim� et commence � partir de la date d'exp�dition et non � partir de la date d'achat.
Il peut �tre plus long que pr�vu en raison d'une adresse invalide, des proc�dures de d�douanement , de stock ou d'autres raisons</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 highlight">
					<div class="h-caption"><h4><i class="fa fa-heart fa-5"></i>Guide des tailles </h4></div>
					<div class="h-body text-center">
						<p>Cliquez juste sur le bouton "guide des tailles" sur chaque page produit pour voir les mesures en centim�tres ou en pouces et pour �tre s�r qu'elles conviendront pour vous.</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 highlight">
					<div class="h-caption"><h4><i class="fa fa-smile-o fa-5"></i>Contact </h4></div>
					<div class="h-body text-center">
						<p>	Chat en ligne Du lundi au Dimanche : 9:00-22:00 </p>
						<p> Ticket Dans les 24h </p>
						<p>Service t�l�phonique Du lundi au vendredi : 9:00-17:00 </p>
					</div>
				</div>
			</div> <!-- /row  -->
		
		</div>
	</div>
	<!-- /Highlights -->



<!----------------------------------------------------------------------------------------------------------->
<!-- FOOTER -->
<!----------------------------------------------------------------------------------------------------------->
	<jsp:include page="footer.jsp">
            <jsp:param name="year" value="2010"/>
    </jsp:include>
<!----------------------------------------------------------------------------------------------------------->
<!-- SCRIPTS -->
<!----------------------------------------------------------------------------------------------------------->

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets/js/headroom.min.js"></script>
	<script src="assets/js/jQuery.headroom.min.js"></script>
	<script src="assets/js/template.js"></script>
</body>
</html>