<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN USER INSERT</title>
</head>
<style>
h1 {
	margin-left: 145px;
}

fieldset {
	width: 425px;
}

label {
	width: 150px;
	float: left;
}

.center {
	display: flex;
	justify-content: center;
	align-items: center;
}

button {
	margin-right: 5px;
}

textarea {
	width: 250px;
	height: 70px;
}

p {
	margin-top: 5px;
	margin-bottom: 5px;
}
</style>

</head>

<body>


	<h1>Administration</h1>
	
	<fieldset>
		<form method="POST" action="userAddServlet">
		
		    <p>
				<label for="prenom">Prénom</label> <input type="prenom"
					name="prenom" id="prenom" />
			</p>
		
		    <p>
				<label for="nom">Nom</label> <input type="nom"
					name="nom" id="nom" />
			</p>
			
			 <p>
				<label for="adresse">Adresse</label> <input type="adresse"
					name="adresse" id="adresse" />
			</p>
			<p>
				<label for="ville">Ville</label> <input type="ville"
					name="ville" id="ville" />
			</p>
			 <p>
				<label for="codePostale">Code Postale</label> <input type="codePostale"
					name="codePostale" id="codePostale" />
			</p>
			
			<p>
				<label for="Tel">Tel</label> <input type="Tel"
					name="Tel" id="Tel" />
			</p>
		
			<p>
				<label for="login">Login</label> <input type="login"
					name="login" id="login" />
			</p>

			<p>
				<label for="password">Mot de passe </label> <input type="password"
					name="password" id="password" />
			</p>
			<p>
				<label for="password">Confirmez le mot de passe </label>
				 <input  />
			</p>
			
			<div class="center">
				<button type="submit">Ajouter un utilisateur</button>
			</div>
		</form>
	</fieldset>
	
	
</body>
</html>