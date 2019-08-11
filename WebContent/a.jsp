<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>

<HTML>
<HEAD>
    <TITLE>Select element drop down box</TITLE>
</HEAD>

<BODY>
<form action="select">
<%
    try{
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
Connection connection = 
         DriverManager.getConnection
            ("jdbc:sqlserver://localhost:1433;databaseName=FourPoints","sa","admin123");

       Statement statement = connection.createStatement() ;

       resultset =statement.executeQuery("select * from products") ;
%>

    <h1> Drop down box or select element</h1>
        <select name="selected">
        <%  while(resultset.next()){ %>
            <option><%= resultset.getString(2)%></option>
        <% } %>
        </select>
        
        

<%
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
<input type="Submit" value="Select"/>
</form>
</BODY>
</HTML>