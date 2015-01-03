<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Liste des utilisateurs</title>
</head>
<body>
	<jsp:useBean id="user" scope="request" class="edu.flst.backlog.service.BacklogServiceImpl"> </jsp:useBean>
	Hello 
	<jsp:getProperty property="name" name="personne"/>
	<jsp:getProperty property="forname" name="personne"/>
</body>
</html>