<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<title>Formulaire</title>
</head>
<body style="display: flex; flex-direction: column; align-items: center;">

	<h1 class="justify-self-center h1" style="margin: 25px 0 50px 0;">Formulaire</h1>
	
<table class="table" style="width: 75%; text-align: center;">
  <thead class="thead-dark">
    <tr>
    <form method="POST" action="person">
      <th scope="col"><input id="firstname" name="firstname" placeholder="Prénom"/></th>
      <th scope="col"><input id="lastname" name="lastname" placeholder="Nom de famille"/></th>
      <th scope="col"><input id="email" name="email" placeholder="Email"/></th>
      <td><button class="btn btn-primary" type="submit">Valider</button></td>
	</form>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="pers" items="${persons}">
      <tr style="text-align: center">
       <td>${pers.firstname}</td>
       <td>${pers.lastname}</td>
       <td>${pers.email}</td>
      </tr>
    </c:forEach>
  </tbody>
</table>

	
</body>
</html>