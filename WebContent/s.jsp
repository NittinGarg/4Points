<%@ page import="java.sql.*"%>

<%@ page import="asd.Store" %>
<%ResultSet resultset =null;%>

<HTML>
<HEAD>
    <TITLE>Select element drop down box</TITLE>
</HEAD>

<BODY>
<% String result = request.getParameter("selected");%>
<form action="select1">

<%
	    try{
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
Connection connection = 
         DriverManager.getConnection
            ("jdbc:sqlserver://localhost:1433;databaseName=FourPoints","sa","admin123");

       Statement statement = connection.createStatement() ;

       resultset =statement.executeQuery("select * from electronics") ;
%>

    <h1> <%=result %></h1>
        <select name="selected2">
        <%  while(resultset.next()){ %>
            <option><%= resultset.getString(1)%></option>
        <% } %>
        </select>
<%
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>    

<input type="submit" value="ADD to Cart" name="ADD"/>
<input type="submit" value="Info" name="Info"/>
</form>
</BODY>
</HTML>