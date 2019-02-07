<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="utf-8">
<title>Formulaire</title>
</head>
<body>

	<h1>Formulaire</h1>
	
	<form method="POST" action="person">
		<label for="firstname">Prénom : <input id="firstname" name="firstname" placeholder="Prénom"/></label>
		<label for="lastname">Nom de famille : <input id="lastname" name="lastname" placeholder="Nom de famille"/></label>
		<label for="email">Email : <input id="email" name="email" placeholder="Email"/></label>
		<input name="submit" type="submit" />
	</form>
	
	<table style="width: 50%; background-color: aliceblue; margin: auto; margin-top: 50px">
		<c:forEach var="pers" items="${personList}">
          <tr style="text-align: center">
            <td>${pers.prenom}</td>
            <td>${pers.nom}</td>
            <td>${pers.email}</td>
          </tr>
         </c:forEach>
	</table>
	
</body>
</html>