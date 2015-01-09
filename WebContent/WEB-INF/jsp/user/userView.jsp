<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="/WEB-INF/c.tld" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" media="screen" href="${contextPath}/css/style.css" />
<title>User</title>
</head>
<body>
	<!-- Include top navbar for navigation -->
	<%@ include file="/WEB-INF/jsp/navbar.jsp" %>
	<div class="container thumbnail">
	<h1 class="text-center">User</h1>
	<h2 class="text-center">User "${user.firstName} ${user.lastName}".</h2>
		<table class="table table-striped">
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
		<div style="text-align:center;">
			<div class="btn-group" role="group" style="text-align: center;">
			  <a href="<c:url value="/story/edit/${user.id }.do"/>">
			  	<button type="button" class="btn btn-default">Edit</button>
			  </a>
			  <a href="<c:url value="/story/remove/${user.id }.do"/>">
			  	<button type="button" class="btn btn-default">Remove</button>
			  </a>
			</div>
		</div>
	</div>  
</body>
</html>