<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID Search</title>
</head>
<body>
<%@ include file="nav.jsp" %>
<br>
<br>
<br>
	
<!-- SHOW BY ID FORM -->
		<form action="getHistory.do" method="GET">
		Maintenance History ID: <input type="text" name="mhid" />
		 <input class="btn btn-primary" type="submit"
			value="Submit" />
					
</body>
</html>