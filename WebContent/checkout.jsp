<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Check Out</title>
    <style type="text/css">
        table { border: 0; }
        table td { padding: 10px; }
    </style>
</head>
<body>
<!----------------------------------------------------------------------------------------------------------->
<!-- NAVBAR -->
<!----------------------------------------------------------------------------------------------------------->
	<jsp:include page="navbar.jsp">
            <jsp:param name="year" value="2010"/>
    </jsp:include>
	<!-- /.navbar -->

<header id="head" class="secondary"></header>
	<div class="container">
<div align="center">
    <h1>Facture</h1>
    <br/>
    <form action="authorize_payment" method="post">
		<c:forEach items="${cookies}" var="article" varStatus ="i">
  
    		<p > ${article.description} : ${article.unitaryPrice} euros</p>

            <input type="hidden" name="products${i.count}" value="${article.description}" />
            <input type="hidden" name="subtotals${i.count}" value="${article.unitaryPrice}" />

    	</c:forEach>
    	
    	
    	
    	<input type="hidden" name="shipping" value="10" />
         <input type="submit" value="Checkout" />
   
    </form>
    
    
    
    
    
    

    	
</div>
</div>	<!-- /container -->
<!----------------------------------------------------------------------------------------------------------->
<!-- FOOTER -->
<!----------------------------------------------------------------------------------------------------------->
	<jsp:include page="footer.jsp">
            <jsp:param name="year" value="2010"/>
    </jsp:include>
</body>
</html>