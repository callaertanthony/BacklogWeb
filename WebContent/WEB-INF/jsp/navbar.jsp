<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<div role="navigation" class="navbar navbar-default navbar-fixed-top">
  	<div class="container-fluid">
	  	 <div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
			<span class="glyphicon glyphicon-home"></span>
			  <span class="sr-only">Toggle navigation</span>
			</button>
			<a class="navbar-brand" href="${contextPath}/backlog.do">Home page</a>
	    </div>
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
			 	<li><a href="${contextPath}/component/new.do">Create Component</a></li>
			 	<li><a href="${contextPath}/component/list.do">Modify Component</a></li>
			 	<li><a href="${contextPath}/user/new.do">Create User</a></li>
			 	<li><a href="${contextPath}/user/list.do">Modify User</a></li>
			 	<li><a href="${contextPath}/story/new.do">Create Story</a></li>
			</ul>
		</div>
	</div>
</div>