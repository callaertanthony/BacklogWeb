<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="/WEB-INF/c.tld" %> 

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
		<h2>Component list.</h2>
		<table>
			<c:forEach items="${components}" var="component">
				<tr>
			        <td>${component.label}</td>
			        <td>${component.owner.firstName} ${component.owner.lastName}</td>
			        <td><a href="<c:url value="edit/${component.id }.do"/>">edit</a></td>
			</c:forEach>
	    </table>
				
		
		
	</div>
</body>
</html>