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
	<form:form name="UserForm" method="POST" action="add.do">
		<form:input path="firstName"/>
		<form:input path="lastName"/>
		<form:select path="job" items="${jobs}"></form:select>
		<input type="submit" value="OK" name="envoyer" />
	</form:form>
</body>
</html>