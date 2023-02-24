<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="">

<% 
int n=Integer.parseInt(request.getParameter("no"));
String a[]=new String[100];
for(int i=1;i<=n;i++)
	{
	a[i]=request.getParameter("nq"+i);
	out.print(a[i]+"  ");
	}
%>

    	



</form>
</body>
</html>