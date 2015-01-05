<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="/WEB-INF/c.tld" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<link rel="stylesheet" type="text/css" media="screen" href="${contextPath}/css/style.css" />
<title>User</title>
</head>
<body>
	<!-- Include top navbar for navigation -->
	<%@ include file="/WEB-INF/jsp/navbar.jsp" %>
	<h1>User</h1>
	<h2>User ${user.firstName} ${user.lastName} added.</h2>
	<div class="center-data">
		<table>
			<tr>
		        <td>Id : </td>
		        <td>${user.id}</td>
		    </tr>
		    <tr>
		        <td>Name : </td>
		        <td>${user.lastName}</td>
		    </tr>
		    <tr>
		        <td>Firstname: </td>
		        <td>${user.firstName}</td>
		    </tr>
		    <tr>
		        <td>Job: </td>
		        <td>${user.job}</td>
		    </tr>
		</table>
	</div>  
</body>
</html>