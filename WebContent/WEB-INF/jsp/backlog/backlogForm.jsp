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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" media="screen" href="${contextPath}/css/style.css" />
<title>Backlog</title>
</head>
<body>
	<!-- Include top navbar for navigation -->
	<%@ include file="/WEB-INF/jsp/navbar.jsp" %>
	
	<div class="center-data">
		<h1>Backlog</h1>
		
		<form:form name="formBacklog" commandName="backlog">
	
			<form:label for="backlogOwner" path="">Owner:</form:label>
			<form:select id="backlogOwner" path="owner.id">
				<c:forEach items="${users}" var="user">
					<form:option value='${user.id}'>${user.firstName} - ${user.lastName}</form:option>
				</c:forEach>
			</form:select><br/>
			<form:errors path="owner"></form:errors>
			<br/>
			
			<form:label for="backlogDescription" path="">Description:</form:label>
			<form:input type="text" id="backlogDescription" path="description" value="${backlog.description}"/>
			<form:errors path="description"></form:errors>
			<br />
	
			<input type="submit" value="Submit" />
			<br />
		</form:form>
	</div>
</body>
</html>