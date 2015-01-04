<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Story</title>
</head>
<body>
	<h1>Story</h1>
	<h2>Some more details..</h2>
	<table>
	    <tr>
	        <td>Label: </td>
	        <td>${story.label}</td>
	    </tr>
	    <tr>
	        <td>Comment: </td>
	        <td>${story.comment}</td>
	    </tr>
	    <tr>
	        <td>Created: </td>
	        <td>${story.createdDate}</td>
	    </tr>
	    <tr>
	        <td>User: </td>
	        <td>${story.user.firstName} ${story.user.lastName}</td>
	        <td>(${story.user.job})</td>
	    </tr>
	</table>
</body>
</html>