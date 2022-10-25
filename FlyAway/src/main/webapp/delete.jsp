<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Flight</title>
</head>
<body>
<%
Integer flightId = Integer.parseInt(request.getParameter("FlightId"));


%>
<div>
<form action = "DeleteFlight" method = "post">
<input type = "text" name= "FlightId" ><%=flightId%>
<input type="submit" value= "delete">
</form>
</div>
</body>
</html>