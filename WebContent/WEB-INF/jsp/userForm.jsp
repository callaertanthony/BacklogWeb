<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<html>
 	<head>
 		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 			<title>User form</title>
 	</head>
		<body>
			 <h1>Hello World!</h1>
				 <form name="UserForm" method="POST" action="CreateUser.do">
					 Nom <input type="text" name="nom" value="" size="25" /><br>
					 Prenom <input type="text" name="prenom" value="" size="25" /><br>
					<SELECT name="job" size="1">
					<OPTION>test
					<OPTION>mardi
					<OPTION>mercredi
					</SELECT>
					 <input type="submit" value="OK" name="envoyer" />
				 </form>
	 </body>
</html>
