<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<html>
 	<head>
 		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 			<title>User form</title>
 	</head>
		<body>
			 <h1>Add user</h1>
				 <form name="UserForm" method="POST" action="CreateUser.do">
					 Nom <input type="text" name="Lastname" value="" size="25" /><br>
					 Prenom <input type="text" name="Firstname" value="" size="25" /><br>
					<form:select name="job" id="job" path="jobList">
					<c:forEach items="${jobList}" var="job">
					<form:option value="${job}"></form:option>
					</c:forEach>
			
					
					</form:select>
					 <input type="submit" value="OK" name="envoyer" />
				 </form>
	 </body>
</html>