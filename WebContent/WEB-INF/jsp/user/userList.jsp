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
	<div class="container">
		<h1>User</h1>
		<h2>User list.</h2>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Name</th>
					<th>Job</th>
					<th>Edit</th>
					<th>Remove</th>
				</tr>
			</thead>
			<c:forEach items="${users}" var="user">
				<tr>
			        <td>
			        	<a href="<c:url value="view/${user.id }.do"/>">
			        		${user.firstName} ${user.lastName}
			        	</a>
			        </td>
			        <td>${user.job}</td>
			        <td><a href="<c:url value="edit/${user.id }.do"/>"><span class="glyphicon glyphicon-pencil"></a></td>
			        <td><a href="<c:url value="remove/${user.id }.do"/>"><span class="glyphicon glyphicon-trash"></a></td>
			</c:forEach>
	    </table>
				
		
		
	</div>
</body>
</html>