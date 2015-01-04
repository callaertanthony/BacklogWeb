<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User</title>
</head>
<body>
	<h1>User</h1>
	
	<table>
	<tr>
        <td>Id : </td>
        <td>${user.id}</td>
    </tr>
    <tr>
        <td>Name : </td>
        <td>${user.lastName}</td>
    </tr>
    <tr>
        <td>Firstname: </td>
        <td>${user.firstName}</td>
    </tr>
    <tr>
        <td>Job: </td>
        <td>${user.job}</td>
    </tr>
</table>  
</body>
</html>