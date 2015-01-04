<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="/WEB-INF/c.tld" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<style type="text/css"> 
	#backlog-info{
	 background-color: #f96e5b;

	 width=auto;
	}
	#backlog-owner{
			width=120px;
	}
	#backlog-description{
			width:auto;
	}
</style>

<title>BackLog</title>
</head>
<body>
	<h1>Backlog</h1>
	<h2>Informations:</h2>
	<div id="backlog-info">
		<div id="backlog-owner">
			Owner: ${backlog.owner.firstName} ${backlog.owner.lastName}
		</div>
		<div id="backlog-description">
			Description: ${backlog.description}
		</div>
	</div>
	<div id="backlog-stories">
		<c:forEach items="${stories}" var="story">
			Label: ${story.label}<br>
			Comment: ${story.comment}<br>
			Created: ${story.createdDate}<br>
			Modified: ${story.modifiedDate}<br>
			User: ${story.user.firstName} ${story.user.lastName}<br>
			Status: ${story.status}<br>
			Component: ${story.component.label} ${story.component.description} (${story.component.owner.firstName} ${story.component.owner.lastName})</br>
		</c:forEach>
	</div>
</body>
</html>