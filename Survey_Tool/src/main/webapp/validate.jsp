<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
    try{


    	
    	
    	Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/login";
		String username = "root";
		String password = "Apinta@2002";
    	
		Connection con = DriverManager.getConnection(url,username,password);
		Statement stmt=con.createStatement();
		String a=request.getParameter("username");
		String b=request.getParameter("password");
		
		
		
		String p="select * from log where user = ? and pass =?";
		PreparedStatement pstmt=con.prepareStatement(p);

		pstmt.setString(1, a);
		pstmt.setString(2, b);
		
		ResultSet rs=pstmt.executeQuery();
		
        if(rs.next())           
           {
        	out.println("Valid login credentials");
        	%><br>
        	<a href="a-1.jsp"><button name="button4" type="button" >next</button></a> <br>
        	<%
           }        
        else
           {
        	out.println("Invalid login credentials");            
           }
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>