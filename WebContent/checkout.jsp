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
            <input type="hidden" name="product${i}" value="${article.description}" />
            <input type="hidden" name="subtotal${i}" value="${article.unitaryPrice}" />

    	</c:forEach>
    	
    	
    	
    </form>
    
    
    
    
    
    
    
    
    <form action="authorize_payment" method="post">
    <table>
        <tr>
            <td>Product/Service:</td>
            <td><input type="text" name="product0" value="Next iPhone" /></td>
        </tr>
        <tr>
            <td>Sub Total:</td>
            <td><input type="text" name="subtotal0" value="100" /></td>
        </tr>
        <tr>
            <td>Shipping:</td>
            <td><input type="text" name="shipping0" value="10" /></td>
        </tr>    
        <tr>
            <td>Tax:</td>
            <td><input type="text" name="tax0" value="10" /></td>
        </tr>    
        <tr>
            <td>Total Amount:</td>
            <td><input type="text" name="total0" value="120" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="Checkout" />
            </td>
        </tr>
    </table>
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