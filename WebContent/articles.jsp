<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<main role="main">

  <section class="jumbotron text-center">
    <div class="container">
     <br/> <br/> <br/> <br/>
      <h1>Notre collection 2021</h1>
      <p class="lead text-muted"> ${connectedUser.login} ,  Nous espérons que vous trouverez votre bonheur !!!</p>
      <p>
      </p>
    </div>
  </section>

  <div class="album py-5 bg-light">
    <div class="container">
    <div class="row">
    
    <c:forEach items="${catalogBrowser.articles}" var="articlevar">
      </p>
      
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

            <div class="card-body">
              <p class="card-text"> ${articlevar.brand} - ${articlevar.description} .</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <form action="viewArticle" method="post">
                  <input name="btnAdd" type="submit" value="Acheter" />&nbsp; &nbsp;
       			  </form>  <br/>
                  
                </div>
                <small class="text-muted">${articlevar.unitaryPrice} euros  </small>
              </div>
            </div>
          </div>
          </div>

        </c:forEach>
	
      </div>
    </div>
  </div>

</main>

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