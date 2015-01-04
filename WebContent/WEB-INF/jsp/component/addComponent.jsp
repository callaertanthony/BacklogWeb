<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Component</title>
</head>
<body>
	<h1>Component</h1>
	<h2>Component added.</h2>
	
	<table>
	    <tr>
	        <td>Label: </td>
	        <td>${component.label}</td>
	    </tr>
	    <tr>
	        <td>Owner: </td>
	        <td>${component.owner.firstName} ${component.owner.lastName}</td>
	        <td>(${component.owner.job})</td>
	    </tr>
	    <tr>
	        <td>Description: </td>
	        <td>${component.description}</td>
	    </tr>
	</table>  
</body>
</html>