<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@taglib prefix="c" uri="/WEB-INF/c.tld" %> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<link rel="stylesheet" type="text/css" media="screen" href="${contextPath}/css/style.css" />
<title>Story view</title>
</head>
<body>
	<!-- Include top navbar for navigation -->
	<%@ include file="/WEB-INF/jsp/navbar.jsp" %>
	
	<div class="center-data">
		<h1>Story</h1>
		<h2>Story ${story.label} added.</h2>
		<table>
			<tr>
		        <td>Id: </td>
		        <td>${story.id}</td>
		    </tr>
		    <tr>
		        <td>label: </td>
		        <td>${story.label}</td>
		    </tr>
		    <tr>
		        <td>comment: </td>
		        <td>${story.comment}</td>
		    </tr>
		    <tr>
		        <td>createdDate: </td>
		        <td>${story.createdDate}</td>
		    </tr>
		    <tr>
		        <td>modifiedDate: </td>
		        <td>${story.modifiedDate}</td>
		    </tr>
		    <tr>
		        <td>user: </td>
		        <td>${story.user.firstName} ${story.user.lastName}</td>
		    </tr>
		    <tr>
		        <td>status: </td>
		        <td>${story.status}</td>
		    </tr>
		    <tr>
		        <td>component: </td>
		        <td>${story.component.description} - (${story.component.owner.firstName} ${story.component.owner.lastName})</td>
		    </tr>
		</table>
	</div>
</body>
</html>