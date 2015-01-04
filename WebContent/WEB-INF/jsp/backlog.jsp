<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="/WEB-INF/c.tld" %> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<style type="text/css"> 
	#navbar {
		top:0;
		left:0;
		position: fixed;
		margin:0;
		padding: 10px;
		width: 100%;
		color: white;
		background: #4096EE;
		text-align:right;
		z-index: 1;
	}
	#navbar > a { color: white; }
	#backlog-info{
		background-color: #C3D9FF;
		margin-bottom: 10px;
	 	width=auto;
	}
	#backlog-owner, #backlog-description, .story{ padding: 10px 5px; }
	#backlog-stories { width:100%; }
	.story {
		position: relative;
		float:left;
		width: 260px;
		margin: 0 5px;
		margin-bottom: 10px;
		border-radius: 6px;
		background: #f0f0f0;
	}
	h1{ margin-top: 60px;}
</style>

<title>BackLog</title>
</head>
<body>
	<div id="navbar">
		<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
		<a href="${contextPath}/component/new.do">Create Component</a>
		 /  
		<a href="${contextPath}/user/new.do">Create User</a>
		 / 
		<a href="${contextPath}/story/new.do">Create Story</a>
	</div>
	<h1 class="title">Backlog</h1>
	<h2>Informations:</h2>
	<div id="backlog-info">
		<div id="backlog-owner">
			Owner: ${backlog.owner.firstName} ${backlog.owner.lastName}
		</div>
		<div id="backlog-description">
			Description: ${backlog.description}
		</div>
	</div>
	<h2>Stories:</h2>
	<div id="backlog-stories">
		<c:forEach items="${stories}" var="story">
			<div class="story">
				Label: ${story.label}<br>
				Comment: ${story.comment}<br>
				Created: ${story.createdDate}<br>
				Modified: ${story.modifiedDate}<br>
				User: ${story.user.firstName} ${story.user.lastName}<br>
				Status: ${story.status}<br>
				Component: ${story.component.label} ${story.component.description} (${story.component.owner.firstName} ${story.component.owner.lastName})</br>
			</div>
		</c:forEach>
	</div>
</body>
</html>