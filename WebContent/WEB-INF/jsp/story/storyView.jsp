<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Story view</title>
</head>
<body>
	<h1>Story</h1>
	
	<table>
		<tr>
	        <td>Id: </td>
	        <td>${story.id}</td>
	    </tr>
	    <tr>
	        <td>label: </td>
	        <td>${story.label}</td>
	    </tr>
	    <tr>
	        <td>comment: </td>
	        <td>${story.comment}</td>
	    </tr>
	    <tr>
	        <td>createdDate: </td>
	        <td>${story.createdDate}</td>
	    </tr>
	    <tr>
	        <td>modifiedDate: </td>
	        <td>${story.modifiedDate}</td>
	    </tr>
	    <tr>
	        <td>user: </td>
	        <td>${story.user}</td>
	    </tr>
	    <tr>
	        <td>status: </td>
	        <td>${story.status}</td>
	    </tr>
	    <tr>
	        <td>component: </td>
	        <td>${story.component}</td>
	    </tr>
	</table>
</body>
</html>