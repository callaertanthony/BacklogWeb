<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Create a story</title>
</head>
<body>
	<form:form method="post" action="add.do">
	
		<form:label path="" for="labelId">Label :</form:label>
		<form:input path="label" id="labelId"/><br/>
		
		<form:label path="" for="comentId">Comment :</form:label>
		<form:input path="comment"/><br/>
		
		<form:label path="" for="userId">User :</form:label>
		<form:select id="userId" path="user.id">
			<c:forEach items="${users}" var="user">
				<form:option value='${user.id}'>${user.firstName} - ${user.lastName}</form:option>
			</c:forEach>
		</form:select><br/>
		
		<form:label path="" for="statusId">Status :</form:label>
		<form:select path="status" items="${status}" id="statusId"></form:select><br/>
		
		<form:label path="" for="componentId">Component :</form:label>
		<form:select path="component.id" id="componentId">
			<c:forEach items="${components}" var="component">
				<form:option value='${component.id}'>${component.label}</form:option>
			</c:forEach>
		</form:select><br/>
		
		<input type="submit" value="Submit"/>
	</form:form>
</body>
</html>