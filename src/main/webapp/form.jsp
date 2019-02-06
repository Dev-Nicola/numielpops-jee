<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Formulaire</title>
</head>
<body>

	<h1>Formulaire ${pers.prenom} ${pers.nom}</h1>
	
	<form method="POST" action="person">
		<label for="firstname">Prénom : <input id="firstname" name="firstname" placeholder="Prénom"/></label>
		<label for="lastname">Nom de famille : <input id="lastname" name="lastname" placeholder="Nom de famille"/></label>
		<label for="email">Email : <input id="email" name="email" placeholder="Email"/></label>
		<input name="submit" type="submit" />
	</form>
	
</body>
</html>