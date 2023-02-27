<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>First page</title>
</head>
<body>
<form action="a1.jsp">
<h1><%=request.getParameter("title")%></h1>

<h2><%=request.getParameter("title1")%></h2>
enter no of questions you want
if you want to enter it
<br>
<input type ="number" name="nq" ><br>
<input type ="submit"></input>


</form>

</body>
</html>
