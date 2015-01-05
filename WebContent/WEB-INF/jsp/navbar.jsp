<%@taglib prefix="c" uri="/WEB-INF/c.tld" %> 
<style type="text/css"> 
	body {
		background: 
			background-color: #fff; 
			background-image: 
			linear-gradient(90deg, transparent 79px, #abced4 79px, #abced4 81px, transparent 81px),
			linear-gradient(#eee .1em, transparent .1em);
			background-size: 100% 1.2em;
	}
	label {
		display:inline-block;
		float:left;
		width:150px;
	}
	input, select {display:inline-block;}
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
		background:
			linear-gradient(27deg, #151515 5px, transparent 5px) 0 5px,
			linear-gradient(207deg, #151515 5px, transparent 5px) 10px 0px,
			linear-gradient(27deg, #222 5px, transparent 5px) 0px 10px,
			linear-gradient(207deg, #222 5px, transparent 5px) 10px 5px,
			linear-gradient(90deg, #1b1b1b 10px, transparent 10px),
			linear-gradient(#1d1d1d 25%, #1a1a1a 25%, #1a1a1a 50%, transparent 50%, transparent 75%, #242424 75%, #242424);
			background-color: #131313;
			background-size: 20px 20px;
	}
	div.form {
		display: table;
    	margin: 0 auto;
	}
	div.form > h1, div.form > h2 { text-align: center; }
	#navbar > #navbar-home > a, #navbar > #navbar-switch > a { color: white; }
	#navbar > #navbar-switch > a:last-child { padding-right: 20px;}
	#navbar #navbar-home {
		float:left;
		width: 80%:
	}
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