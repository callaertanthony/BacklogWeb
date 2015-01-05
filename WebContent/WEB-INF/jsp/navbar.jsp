<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<div id="navbar">
	<div id="navbar-home">
		<a href="${contextPath}/backlog.do">Home page</a>
	</div>
	<div id="navbar-switch">
		<a href="${contextPath}/component/new.do">Create Component</a>
		 /  
		<a href="${contextPath}/user/new.do">Create User</a>
		 / 
		<a href="${contextPath}/story/new.do">Create Story</a>
	</div>
</div>