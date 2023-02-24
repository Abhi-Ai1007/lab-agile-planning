<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
    
<!DOCTYPE html >

<html>
<head>

<title>JSP Page</title>
</head>
<body>
<h2>Product</h2>
<%
try{
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/survey";
		String username = "root";
		String password = "Apinta@2002";
		
		Connection con = DriverManager.getConnection(url,username,password);
		int id=Integer.parseInt(request.getParameter("product"));
		
		for(int i=1;i<)
		int id=Integer.parseInt(request.getParameter("product"));
		String pna=request.getParameter("name");
		int qun=Integer.parseInt(request.getParameter("quantity"));
		int rat=Integer.parseInt(request.getParameter("rate"));
		
		
		String q = "insert into prod(idprod,pname,quantity,rate) values(?,?,?,?)";
		PreparedStatement pstmt=con.prepareStatement(q);
		
		pstmt.setInt(1, id);
		pstmt.setString(2, pna);
		pstmt.setInt(3, qun);
		pstmt.setInt(4, rat);
		
		pstmt.executeUpdate();
	}
catch(Exception e){
	e.printStackTrace();
}
%>
			
</body>
</html>