<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="utf-8">
<title>Formulaire</title>
</head>
<body>

	<h1>Formulaire</h1>
	
	<table style="width: 80%; background-color: aliceblue; margin : auto; margin-top: 50px">
		<tr style="text-align: center">
			<form method="POST" action="person">
				<td><label for="firstname">Prénom : <input id="firstname" name="firstname" placeholder="Prénom"/></label></td>
				<td><label for="lastname">Nom de famille : <input id="lastname" name="lastname" placeholder="Nom de famille"/></label></td>
				<td><label for="email">Email : <input id="email" name="email" placeholder="Email"/></label></td>
				<td><input name="submit" type="submit" /></td>
			</form>
		</tr>
		<c:forEach var="pers" items="${persons}">
          <tr style="text-align: center">
            <td>${pers.firstname}</td>
            <td>${pers.lastname}</td>
            <td>${pers.email}</td>
          </tr>
         </c:forEach>
	</table>
	
</body>
</html>