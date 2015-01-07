<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/fmt.tld" prefix="fmt" %>
<%@taglib prefix="c" uri="/WEB-INF/c.tld" %> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<link rel="stylesheet" type="text/css" media="screen" href="${contextPath}/css/style.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<title>BackLog</title>
</head>
<body>
	<!-- Include top navbar for navigation -->
	<%@ include file="/WEB-INF/jsp/navbar.jsp" %>
	<h1 class="title" id="container_info_story">Backlog</h1>
	<h2 id="container_info_story">Informations:</h2>
	<div id="container_info_story">
		<div id="backlog-info">
			<div id="backlog-owner">
				Owner: ${backlog.owner.firstName} ${backlog.owner.lastName}
			</div>
			<div id="backlog-description">
				Description: ${backlog.description}
			</div>
		</div>
		
		<div id="Story-Latest">
				<h2>Lastest stories modified:</h2>	
				<div id="latest">loading ...</div>
		</div>
	</div>
	
	<div id="backlog-stories">
		<h2>Stories:</h2>
		<c:forEach items="${stories}" var="story">
			<div class="story thumbnail">
			<h2>Stories:</h2>
				<a href="<c:url value="story/view/${story.id}.do"/>">
					<h3>${story.label}</h3>
					<b>Comment:</b> ${story.comment}
					<b>Created:</b>	${story.createdDate}<br>
					<b>User:</b> ${story.user.firstName} ${story.user.lastName}<br>
					<b>Status:</b> ${story.status}<br>
				</a>
			</div>
		</c:forEach>

		<script type="text/javascript" src="/BacklogWeb/js/prototype.js"></script>
				<script>
					new Ajax.PeriodicalUpdater(
						'latest',
						'/BacklogWeb/story/lastStory.do',
						{
							frequency: 5
						}
					);
		</script>
		</html>

	</div>
</body>