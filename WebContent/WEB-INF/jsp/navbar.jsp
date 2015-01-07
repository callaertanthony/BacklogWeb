<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<div id="navbar">
	<div id="navbar-home">
		<a href="${contextPath}/backlog.do">Home page</a>
	</div>
	<div id="navbar-switch">
		<a href="${contextPath}/component/new.do">Create Component</a>
		 / 
		<a href="${contextPath}/component/list.do">Modify Component</a>
		 / 
		<a href="${contextPath}/user/new.do">Create User</a>
		 / 
		<a href="${contextPath}/user/list.do">Modify User</a>
		 / 
		<a href="${contextPath}/story/new.do">Create Story</a> 
	</div>
</div>