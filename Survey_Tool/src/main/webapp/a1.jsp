<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="a2.jsp">
  <%   int a = Integer.parseInt(request.getParameter("nq"));
  for (int i = 1; i <= Integer.parseInt(request.getParameter("nq")); i++) {
	  %>
	  <label for="fname">Question no. <%=i %></label><br>
	  <input type="Text" name="nq<%=i%>"><br>
	  <%

	}  
        
  %>
  <input type ="hidden" value="<%=a%>" name="no">
<input type ="submit">
	 </form>
	  
</body>
</html>