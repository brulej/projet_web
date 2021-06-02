<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review</title>
<style type="text/css">
    table { border: 0; }
    table td { padding: 5px; }
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
<!----------------------------------------------------------------------------------------------------------->
<!-- CONTAINER-->
<!----------------------------------------------------------------------------------------------------------->
	<header id="head" class="secondary"></header>
	<!-- container -->
	<div class="container">
<div align="center">
    <h1>Vérification des informations</h1>
    <form action="execute_payment" method="post">
    <table>
        <tr>
            <td colspan="2"><b>Details de la transaction:</b></td>
            <td>
                <input type="hidden" name="paymentId" value="${param.paymentId}" />
                <input type="hidden" name="PayerID" value="${param.PayerID}" />
            </td>
        </tr>
        <tr>
            <td>Description:</td>
            <td>${transaction.description}</td>
        </tr>
        <tr>
            <td>Sus-total:</td>
            <td>${transaction.amount.details.subtotal} euros</td>
        </tr>
        <tr>
            <td>Livraison:</td>
            <td>${transaction.amount.details.shipping} euros</td>
        </tr>
        <tr>
            <td>Tax:</td>
            <td>${transaction.amount.details.tax} euros</td>
        </tr>
        <tr>
            <td>Total:</td>
            <td>${transaction.amount.total} euros</td>
        </tr>
        <tr><td><br/></td></tr>
        <tr>
            <td colspan="2"><b>Informations sur l'acheteur:</b></td>
        </tr>
        <tr>
            <td>Prénom:</td>
            <td>${payer.firstName}</td>
        </tr>
        <tr>
            <td>Nom:</td>
            <td>${payer.lastName}</td>
        </tr>
        <tr>
            <td>Email:</td>
            <td>${payer.email}</td>
        </tr>
        <tr><td><br/></td></tr>
        <tr>
            <td colspan="2"><b>Address de livraison:</b></td>
        </tr>
        <tr>
            <td>Nom:</td>
            <td>${shippingAddress.recipientName}</td>
        </tr>
        <tr>
            <td>Adresse:</td>
            <td>${shippingAddress.line1}</td>
        </tr>
        <tr>
            <td>Ville:</td>
            <td>${shippingAddress.city}</td>
        </tr>
        <tr>
            <td>Région:</td>
            <td>${shippingAddress.state}</td>
        </tr>
        <tr>
            <td>Code Pays:</td>
            <td>${shippingAddress.countryCode}</td>
        </tr>
        <tr>
            <td>Code postal:</td>
            <td>${shippingAddress.postalCode}</td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="Payer" />
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