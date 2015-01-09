<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="/WEB-INF/c.tld"%>
<%@ taglib prefix="fmt" uri="/WEB-INF/fmt.tld"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" media="screen" href="${contextPath}/css/style.css" />
<title>Backlog</title>
</head>
<body>
	<!-- Include top navbar for navigation -->
	<%@ include file="/WEB-INF/jsp/navbar.jsp" %>
	
	<div class="container">
		<h1>Backlog</h1>
		
		<form:form name="formBacklog" commandName="backlog" class="form-horizontal">
			<div class="form-group">
				<form:label for="backlogOwner" path="" class="col-sm-2 control-label">Owner:</form:label>
				<div class="col-sm-10">
					<form:select id="backlogOwner" path="owner.id" class="form-control">
						<c:forEach items="${users}" var="user">
							<form:option value='${user.id}'>${user.firstName} - ${user.lastName}</form:option>
						</c:forEach>
					</form:select><br/>
					<form:errors path="owner" class="text-danger"></form:errors>
				</div>
			</div>
			<div class="form-group">
				<form:label for="backlogDescription" path="" class="col-sm-2 control-label">Description:</form:label>
				<div class="col-sm-10">
					<form:input type="text" id="backlogDescription" path="description" class="form-control" value="${backlog.description}"/>
					<form:errors path="description" class="text-danger"></form:errors>
				</div>
			</div>
			<div class="col-sm-offset-2 col-sm-10">
				<input type="submit" value="Submit" class="btn btn-primary"/>
			</div>
		</form:form>
	</div>
</body>
</html>