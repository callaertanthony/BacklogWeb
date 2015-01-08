<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="/WEB-INF/c.tld"%>

<html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" media="screen" href="${contextPath}/css/style.css" />
<title>User</title>
</head>
<body>
	<!-- Include top navbar for navigation -->
	<%@ include file="/WEB-INF/jsp/navbar.jsp"%>

	<div class="container">
		<h1>User</h1>

		<form:form name="UserForm" commandName="user" class="form-horizontal">
			<form:hidden path="id" value="${user.id > 0 ? user.id : -1 }" />
			
			<div class="form-group">
				<form:label for="userFirstName" path="" class="col-sm-2 control-label">First name:</form:label>
				<div class="col-sm-10">
					<form:input type="text" id="userFirstName" path="firstName" class="form-control"/>
					<form:errors path="firstName" class="text-danger"></form:errors>
				</div>
			</div>
			<div class="form-group">
				<form:label for="userlastName" path="" class="col-sm-2 control-label">Last name:</form:label>
				<div class="col-sm-10">
					<form:input type="text" id="userlastName" path="lastName" class="form-control"/>
					<form:errors path="lastName" class="text-danger"></form:errors>
				</div>
			</div>
			<div class="form-group">
				<form:label for="userJob" path="" class="col-sm-2 control-label">Owner:</form:label>
				<div class="col-sm-10">
					<form:select path="job" id="userJob" items="${jobs}" class="form-control"></form:select>
				</div>
			</div>
			<div class="col-sm-offset-2 col-sm-10">
				<input type="submit" value="Submit" class="btn btn-primary"/>
			</div>
		</form:form>
		
	</div>
</body>
</html>