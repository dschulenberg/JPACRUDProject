<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Maintenance History App</title>
</head>
<body>
<%@ include file="nav.jsp" %>
<h1>WHY AM I STILL HERE</h1>

<!-- SHOW ALL BUTTON -->
		<form action="getAllHistory.do" method="GET">
		 Show All Maintenance Histories:
		 <input class="btn btn-primary" type="submit"
			value="Submit" />
	</form>
	
<!-- SHOW BY ID FORM -->
		<form action="getHistory.do" method="GET">
		Maintenance History ID: <input class="form-control" type="text" name="mhid" />
		 <input class="btn btn-primary" type="submit"
			value="Submit" />
					
</body>
</html>