<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="assets/css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="assets/css/style.css"> <!-- Resource style -->
	<script src="assets/js/modernizr.js"></script> <!-- Modernizr -->
  	
	<title>Product Quick View | CodyHouse</title>
</head>
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
 
<body>
	<header>
		<h1>Produits</h1>
	</header>
	
	<ul class="cd-items cd-container">
		<li class="cd-item">
			<img src="assets/img/item-1.jpg" alt="Item Preview">
			<a href="#0" class="cd-trigger">Aperçu du produit</a>
		</li> <!-- cd-item -->

		<li class="cd-item">
			<img src="assets/img/item-1.jpg" alt="Item Preview">
			<a href="#0" class="cd-trigger">Aperçu du produit</a>
		</li> <!-- cd-item -->

		<li class="cd-item">
			<img src="assets/img/item-1.jpg" alt="Item Preview">
			<a href="#0" class="cd-trigger">Aperçu du produit</a>
		</li> <!-- cd-item -->

		<li class="cd-item">
			<img src="assets/img/item-1.jpg" alt="Item Preview">
			<a href="#0" class="cd-trigger">Aperçu du produit</a>
		</li> <!-- cd-item -->

		<li class="cd-item">
			<img src="assets/img/item-1.jpg" alt="Item Preview">
			<a href="#0" class="cd-trigger">Aperçu du produit</a>
		</li> <!-- cd-item -->

		<li class="cd-item">
			<img src="assets/img/item-1.jpg" alt="Item Preview">
			<a href="#0" class="cd-trigger">Aperçu du produit</a>
		</li> <!-- cd-item -->

		<li class="cd-item">
			<img src="assets/img/item-1.jpg" alt="Item Preview">
			<a href="#0" class="cd-trigger">Aperçu du produit</a>
		</li> <!-- cd-item -->

		<li class="cd-item">
			<img src="assets/img/item-1.jpg" alt="Item Preview">
			<a href="#0" class="cd-trigger">Aperçu du produit</a>
		</li> <!-- cd-item -->

		<li class="cd-item">
			<img src="assets/img/item-1.jpg" alt="Item Preview">
			<a href="#0" class="cd-trigger">Aperçu du produit</a>
		</li> <!-- cd-item -->

		<li class="cd-item">
			<img src="assets/img/item-1.jpg" alt="Item Preview">
			<a href="#0" class="cd-trigger">Aperçu du produit</a>
		</li> <!-- cd-item -->

		<li class="cd-item">
			<img src="assets/img/item-1.jpg" alt="Item Preview">
			<a href="#0" class="cd-trigger">Aperçu du produit</a>
		</li> <!-- cd-item -->

		<li class="cd-item">
			<img src="assets/img/item-1.jpg" alt="Item Preview">
			<a href="#0" class="cd-trigger">Aperçu du produit</a>
		</li> <!-- cd-item -->
	</ul> <!-- cd-items -->

	<div class="cd-quick-view">
		<div class="cd-slider-wrapper">
			<ul class="cd-slider">
				<li class="selected"><img src="assets/img/item-1.jpg" alt="Product 1"></li>
				<li><img src="assets/img/item-2.jpg" alt="Product 2"></li>
				<li><img src="assets/img/item-3.jpg" alt="Product 3"></li>
			</ul> <!-- cd-slider -->

			<ul class="cd-slider-navigation">
				<li><a class="cd-next" href="#0">Précédent</a></li>
				<li><a class="cd-prev" href="#0">Suivant</a></li>
			</ul> <!-- cd-slider-navigation -->
		</div> <!-- cd-slider-wrapper -->

		<div class="cd-item-info">
			<h2>Titre du produit </h2>
			<p></p>

			<ul class="cd-item-action">
				<li><button class="add-to-cart">Add to cart</button></li>					
				<li><a href="#0">Learn more</a></li>	
			</ul> <!-- cd-item-action -->
		</div> <!-- cd-item-info -->
		<a href="#0" class="cd-close">Close</a>
	</div> <!-- cd-quick-view -->
<!----------------------------------------------------------------------------------------------------------->
<!-- FOOTER -->
<!----------------------------------------------------------------------------------------------------------->
	<jsp:include page="footer.jsp">
            <jsp:param name="year" value="2010"/>
    </jsp:include>
<!----------------------------------------------------------------------------------------------------------->
<!-- SCRIPTS -->
<!----------------------------------------------------------------------------------------------------------->
<script src="assets/js/jquery-2.1.1.js"></script>
<script src="assets/js/velocity.min.js"></script>
<script src="assets/js/main.js"></script> <!-- Resource jQuery -->
</body>
</html>