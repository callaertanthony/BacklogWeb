<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@taglib prefix="c" uri="/WEB-INF/c.tld" %> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<link rel="stylesheet" type="text/css" media="screen" href="${contextPath}/css/style.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<title>Story view</title>
</head>
<body>
	<!-- Include top navbar for navigation -->
	<%@ include file="/WEB-INF/jsp/navbar.jsp" %>
	<div class="container thumbnail">
		<h1 class="text-center">Story</h1>
		<h2 class="text-center">Story "${story.label}".</h2>
		<table class="table table-striped">
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
		<div style="text-align:center;">
			<div class="btn-group" role="group" style="text-align: center;">
			  <a href="<c:url value="/story/edit/${story.id }.do"/>">
			  	<button type="button" class="btn btn-default">Edit</button>
			  </a>
			  <a href="<c:url value="/story/remove/${story.id }.do"/>">
			  	<button type="button" class="btn btn-default">Remove</button>
			  </a>
			</div>
		</div>
	</div>
</body>
</html>