<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="/WEB-INF/c.tld"%>
<%@ taglib prefix="fmt" uri="/WEB-INF/fmt.tld"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<link rel="stylesheet" type="text/css" media="screen" href="${contextPath}/css/style.css" />
<title>Component</title>
</head>
<body>
	<!-- Include top navbar for navigation -->
	<%@ include file="/WEB-INF/jsp/navbar.jsp" %>
	
	<div class="center-data">
		<h1>Component</h1>
		
		<form:form name="formComponent" commandName="component">
			<form:hidden path="id" value="${component.id > 0 ? component.id : -1 }"/>
		
			<form:label for="componentLabel" path="">Label:</form:label>
			<form:input type="text" id="componentLabel" path="label" />
			<form:errors path="label"></form:errors>
			<br />
	
			<form:label for="componentOwner" path="">Owner:</form:label>
			<form:select id="componentOwner" path="owner.id">
				<c:forEach items="${users}" var="user">
					<form:option value='${user.id}'>${user.firstName} - ${user.lastName}</form:option>
				</c:forEach>
			</form:select><br/>
	
			<form:label for="componentDescription" path="">Description:</form:label>
			<form:input type="text" id="componentDescription" path="description" />
			<form:errors path="description"></form:errors>
			<br />
	
			<input type="submit" value="Submit" />
			<br />
		</form:form>
	</div>
</body>
</html>