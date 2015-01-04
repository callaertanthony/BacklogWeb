<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/WEB-INF/c.tld" prefix="c"%>
    <%@ taglib prefix="fmt" uri="/WEB-INF/fmt.tld" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Component</title>
</head>
<body>
	<h1>Component</h1>
	<form:form name="formComponent" action="addComponent.do">
		<h2>Create a component</h2>
		<form:label for="componentLabel" path="">Label:</form:label>
		<form:input type="text" name="componentLabel" id="componentLabel" path="label"/></br>
		<form:label for="componentOwner" path="">Owner:</form:label>
		<form:select name="componentOwner" id="componentOwner" path="owner">
			<c:forEach items="${users}" var="user">
			<form:option value='${user.id}'>${user.firstName} ${user.lastName}</form:option>
			</c:forEach>
		</form:select>
		<br/>
		<form:label for="componentDescription" path="">Description:</form:label>
		<form:input type="text" name="componentDescription" id="componentDescription" path="description"/></br>
		<input type="submit" value="Submit"/></br>
		
	</form:form>
</body>
</html>