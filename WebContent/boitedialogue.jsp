<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html><!DOCTYPE html>
	<html lang="fr">
	<head>
	<meta charset="UTF-8">
	<title>Exemple de  Modals Bootstrap 3 </title>
	<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
	<script 	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script 	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	                $(document).ready(function(){
	                               $("#monModal").modal('show');
	                });
	</script>
	</head>
	<body>
	<div id="monModal" class="modal fade">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" 	data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title">Confirmation</h4>
	            </div>
	            <div class="modal-body">
	                <p>Vos coordonnées sont bien enregistrer</p>
	                </div>
	                <p style = "color:orang" class="text-center text-muted">pour vous connectez <a href="signin.jsp">Cliquez-ici </a>  </p>
	            
	            <div class="modal-footer">
	                <button type="button" class="btn btn-default" 	data-dismiss="modal">Fermer</button>
	                
	            </div>
	        </div>
	    </div>
	</div>
	</body>
	</html>
  
</html>