<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="/WEB-INF/c.tld" %> 

<html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<link rel="stylesheet" type="text/css" media="screen" href="${contextPath}/css/style.css" />
<title>User</title>
</head>
<body>
	<!-- Include top navbar for navigation -->
	<%@ include file="/WEB-INF/jsp/navbar.jsp" %>
	
	<div class="center-data">
		<h1>User</h1>
		<h2>Create an user</h2>
		
		<form:form name="UserForm" method="POST" action="add.do">
			<form:label for="userFirstName" path="">First name:</form:label>
			<form:input path="firstName" id="userFirstName"/><br/>
			
			<form:label for="userlastName" path="">Last name:</form:label>
			<form:input path="lastName" id="userLastName"/><br/>
			
			<form:label for="userJob" path="">Job:</form:label>
			<form:select path="job" id="userJob" items="${jobs}"></form:select><br/>
			
			<input type="submit" value="Submit" />
		</form:form>
	</div>
</body>
</html>