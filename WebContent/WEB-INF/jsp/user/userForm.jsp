<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="/WEB-INF/c.tld"%>

<html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css" media="screen"
	href="${contextPath}/css/style.css" />
<title>User</title>
</head>
<body>
	<!-- Include top navbar for navigation -->
	<%@ include file="/WEB-INF/jsp/navbar.jsp"%>

	<div class="center-data">
		<h1>User</h1>

		<form:form name="UserForm" commandName="user">
			<form:hidden path="id" value="${user.id > 0 ? user.id : -1 }" />

			<form:label for="userFirstName" path="">First name:</form:label>
			<form:input path="firstName" id="userFirstName" />
			<form:errors path="firstName"></form:errors>
			<br />

			<form:label for="userlastName" path="">Last name:</form:label>
			<form:input path="lastName" id="userLastName" />
			<form:errors path="lastName"></form:errors>
			<br />

			<form:label for="userJob" path="">Job:</form:label>
			<form:select path="job" id="userJob" items="${jobs}"></form:select>
			<br />

			<input type="submit" value="Submit" />
		</form:form>
	</div>
</body>
</html>