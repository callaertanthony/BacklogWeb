<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="/WEB-INF/c.tld" %>
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
	<h2>Create a component</h2>
	
	<form:form name="formComponent" action="add.do">
		<form:label for="componentLabel" path="">Label:</form:label>
		<form:input type="text" id="componentLabel" path="label"/></br>
		<form:label for="componentOwner" path="">Owner:</form:label>
		<form:select id="componentOwner" path="owner">
			<c:forEach items="${users}" var="user">
				<form:option value='${user.id}'>${user.firstName} ${user.lastName}</form:option>
			</c:forEach>
		</form:select>
		<br/>
		<form:label for="componentDescription" path="">Description:</form:label>
		<form:input type="text" id="componentDescription" path="description"/></br>
		
		<input type="submit" value="Submit"/></br>	
	</form:form>
</body>
</html>