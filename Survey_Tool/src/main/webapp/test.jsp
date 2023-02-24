<head>
<meta charset="UTF-8">
<title>Acknowledgment Page</title>
</head>
<body>
	<%
	try {
		String sql;
		Class.forName("com.mysql.jdbc.Driver");  
		Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","2009");
		Statement stmt=connection.createStatement(); 
		String name=request.getParameter("username");
		String pass=request.getParameter("password");
		String user = request.getParameter("UserType");
		String submit = request.getParameter("submit");
		out.println(submit);
		sql = "select * from employee where username=? and password=?";
		PreparedStatement stm=connection.prepareStatement(sql);
		stm.setString(1, name);
		stm.setString(2, pass);	
		ResultSet rs=stm.executeQuery();
		if(rs.next())
		{
			%>
			<script>alert("Sucessfully Login");
			</script>
			<%
			if(user.compareTo("Doctor") == 0){
				RequestDispatcher rd=request.getRequestDispatcher("#");
				rd.include(request,response);
				
			}
			else if(user.compareTo("Nurse") == 0){
				RequestDispatcher rd=request.getRequestDispatcher("#");
				rd.include(request,response);
			}
			else{
				RequestDispatcher rd=request.getRequestDispatcher("PatientRegistration.jsp");
				rd.include(request,response);
				
			}
		}
		else
		{
			//out.println("<b>Invalid username and password !</b><br>");
			RequestDispatcher rd=request.getRequestDispatcher("loginPatient.jsp");
			rd.include(request,response);
			%>
			<script>alert("Invalid Details!!")</script>
			<%
		}
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	%>
</body>
</html>