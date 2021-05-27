<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport"    content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author"      content="Sergey Pozhilov (GetTemplate.com)">
	
	<title>Contact us - Progressus Bootstrap template</title>

	<link rel="shortcut icon" href="assets/images/gt_favicon.png">
	
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">

	<!-- Custom styles for our template -->
	<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen" >
	<link rel="stylesheet" href="assets/css/main.css">

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
	<header id="head" class="secondary"></header>
	<!-- container -->
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="index.html">Home</a></li>
			<li class="active">About</li>
		</ol>
		<div class="row">
			<!-- Article main content -->
			<article class="col-sm-9 maincontent">
				<header class="page-header">
					<h1 class="page-title">Contactez-nous</h1>
				</header>
				<p>
					Un problème sur votre commande ? Une remarque particulière ? Notre équipe est là pour vous répondre au plus vite !
				</p>
				<br>
					<form method="POST" action="addmessage" enctype="multipart/form-data">
						<div class="row" >
							<div class="col-sm-4">
								<input class="form-control" type="text" placeholder="Nom"  name="names" id="names">
							</div>
							<div class="col-sm-4">
								<input class="form-control" type="text" placeholder="Adresse mail" name="mail" id="mail">
							</div>
							<div class="col-sm-4">
								<input class="form-control" type="text" placeholder="Téléphone" name="tel" id="tel">
							</div>
						</div>
						<br>
						<div class="col-sm-4">
							<input type="file" name="multiPartServlet" id="multiPartServlet" accept="image/*" multiple /> 
						</div>
						<br>
						<br>
						<div class="row">
							<div class="col-sm-12">
								<textarea placeholder="Type your message here..." class="form-control" rows="9"  name="mes" id="mes"></textarea>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-sm-6 text-right">
								<input class="btn btn-action" type="submit" value="Envoyer">
							</div>
						</div>
					</form>
			</article>
			<!-- /Article -->
<!----------------------------------------------------------------------------------------------------------->
<!-- SIDEBAR ( adresse )-->
<!----------------------------------------------------------------------------------------------------------->
			<aside class="col-sm-3 sidebar sidebar-right">
				<div class="widget">
					<h4>Adresse</h4>
					<address>
						Place du Maréchal de Lattre de Tassigny, 75016 Paris
					</address>
					<h4>Téléphone:</h4>
					<address>
						01 44 05 44 05
					</address>
				</div>
			</aside>
			<!-- /Sidebar -->
		</div>
	</div>	<!-- /container -->
	<section class="container-full top-space">
		<div id="map"></div>
	</section>
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
	
	<!-- Google Maps -->
	<script src="https://maps.googleapis.com/maps/api/js?key=&amp;sensor=false&amp;extension=.js"></script> 
	<script src="assets/js/google-map.js"></script>
	

</body>
</html>