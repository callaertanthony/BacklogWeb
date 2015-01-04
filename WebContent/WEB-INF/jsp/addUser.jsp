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
	<h2>User added.</h2>
	
	<table>
    <tr>
        <td>Name : </td>
        <td>${addUser.lastName}</td>
    </tr>
    <tr>
        <td>Firstname: </td>
        <td>${addUser.firstName}</td>
    </tr>
    <tr>
        <td>Job: </td>
        <td>${addUser.job}</td>
    </tr>
</table>  
</body>
</html>