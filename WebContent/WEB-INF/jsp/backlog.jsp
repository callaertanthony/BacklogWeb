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
	
	<div class="container">
		<h1 class="page-header">Backlog</h1>
		<div class="row">
			<div class="col-md-8">
				<div class="well">
					<a href="<c:url value="editBacklog.do"/>">
						<button type="button" class="close">						
							<span class="glyphicon glyphicon-edit"></span>
						</button>
					</a>
					<h2>Informations:</h2>
					<div>
						Owner: ${backlog.owner.firstName} ${backlog.owner.lastName}
					</div>
					<div>
						Description: ${backlog.description}
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div id="latest">loading ...</div>
			</div>
		</div>
		<div class="row">
			<h1 class="page-header">Stories</h1>	
			<c:forEach items="${stories}" var="story">
				<a href="<c:url value="story/view/${story.id}.do"/>">
					<div class="col-xs-6 col-md-4">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">${story.label}</h3>
							</div>
							 <div class="panel-body">
								<b>Comment:</b> ${story.comment}
								<b>Created:</b>	${story.createdDate}<br>
								<b>User:</b> ${story.user.firstName} ${story.user.lastName}<br>
								<b>Status:</b> ${story.status}<br>
							</div>
						</div>
					</div>	
				</a>
			</c:forEach>
		</div>
	</div>
</body>
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