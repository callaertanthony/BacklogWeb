<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
					<form:select name="jobList" id="jobList" path="vecteurJob">
					
		<%-- 		<form:option value="${job}">${vecteurJob.get(0)}</form:option>
					<form:option value="${job}">${vecteurJob.get(1)}</form:option>
					<form:option value="${job}">${vecteurJob.get(2)}</form:option>
					 --%>

			
					
					</form:select>
					 <input type="submit" value="OK" name="envoyer" />
				 </form>
	 </body>
</html>
