<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" media="screen" href="${contextPath}/css/style.css" />
<title>Story</title>
</head>
<body>
	<!-- Include top navbar for navigation -->
	<%@ include file="/WEB-INF/jsp/navbar.jsp"%>
	<div class="container">
		<h1>Story</h1>
		
		<form:form commandName="story" class="form-horizontal" method="post">
			<form:hidden path="id" value="${story.id > 0 ? story.id : -1 }" />
			
			<div class="form-group">
				<form:label for="labelId" path="" class="col-sm-2 control-label">Label:</form:label>
				<div class="col-sm-10">
					<form:input type="text" id="labelId" path="label" class="form-control"/>
					<form:errors path="label" class="text-danger"></form:errors>
				</div>
			</div>
			<div class="form-group">
				<form:label for="commentId" path="" class="col-sm-2 control-label">Comment:</form:label>
				<div class="col-sm-10">
					<form:input type="text" id="commentId" path="comment" class="form-control"/>
					<form:errors path="comment" class="text-danger"></form:errors>
				</div>
			</div>
			<div class="form-group">
				<form:label for="userId" path="" class="col-sm-2 control-label">User:</form:label>
				<div class="col-sm-10">
					<form:select id="userId" path="user.id" class="form-control">
						<c:forEach items="${users}" var="user">
							<form:option value='${user.id}'>${user.firstName} - ${user.lastName}</form:option>
						</c:forEach>
					</form:select>
				</div>
			</div>
			<div class="form-group">
				<form:label for="statusId" path="" class="col-sm-2 control-label">Status:</form:label>
				<div class="col-sm-10">
					<form:select path="status" items="${status}" id="statusId" class="form-control"></form:select>
				</div>
			</div>
			<div class="form-group">
				<form:label for="componentId" path="" class="col-sm-2 control-label">Component:</form:label>
				<div class="col-sm-10">
					<form:select id="componentId" path="component.id" class="form-control">
						<c:forEach items="${components}" var="component">
							<form:option value='${component.id}'>${component.label}</form:option>
						</c:forEach>
					</form:select>
				</div>
			</div>
			<div class="col-sm-offset-2 col-sm-10">
				<input type="submit" value="Submit" class="btn btn-primary"/>
			</div>
		</form:form>
	</div>
</body>
</html>