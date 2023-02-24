<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>
    <head>
        <title>display data from the table using jsp</title>
    </head>
    <body>
        <%
        Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/survey";
		String username = "root";
		String password = "Apinta@2002";
		
		String connectionURL = "jdbc:mysql://localhost:3306/usermaster";
                        // declare a connection by using Connection interface
            Connection connection = null;
                        // declare object of Statement interface that is used for 
            // executing sql statements.
            Statement statement = null;
                        try {
                            // Load JBBC driver "com.mysql.jdbc.Driver".
                Class.forName("com.mysql.jdbc.Driver").test();
                                /* Create a connection by using getConnection() method 
                   that takes parameters of string type connection url, user 
                   name and password to connect to database. */
                connection = 
                   DriverManager.getConnection(connectionURL, "root", "root");

                /* createStatement() is used for create statement object 
                  that is used for sending 
                sql statements to the specified database. */
                statement = connection.createStatement();
                                // sql query to retrieve values from the secified table.
                String QueryString = 
                 "create table user_master(id int not null auto_increment,name " +
                        "varchar(25),city varchar(20), primary key(id));";
                                        // execyteUpdate() mothod execute specified sql query. 
                statement.executeUpdate(QueryString);
                        %> <TABLE border="0" style="background-color: #ffffcc;">
        <TR>
            <TD align="center" ><font size="+3" color="green">Congratulations !
                </font></TD>
            <tr><TD align="center" ><font size="+2">Table of specified name is 
                created successfully.</font>
            </TD></tr>
        </TR>
        <%	} catch (Exception ex) {%>
        <TABLE border="0" style="background-color: #ffffcc;">
            <TR>
                <TD align="center" ><font size="+3" color="red">Some problems 
               to create table.</font></TD>
            </TR>
            <% } finally {
                // close all the connections.
                statement.close();
                connection.close();
            }
            %><tr><td align="center" >
                    <A HREF="welcome_to_database_query.jsp">
                <font size="5" color="blue">back to home page</font></A></td>
        </tr>	 </TABLE>
    </body>
</html>