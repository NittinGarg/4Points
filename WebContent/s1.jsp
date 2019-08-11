<%@ page import="java.sql.*,java.io.*" %>
<html>
<head>
<title>Getting Column Names using Metadata</title>
</head>
<body>
<h2>Column Names of table "Student1"</h2>

<% 

Connection con=null;
ResultSet rs,rslt=null;
Statement stmt=null;
ResultSetMetaData md;
PreparedStatement Pstmt  =null;
String productname = request.getParameter("selected2");
System.out.println(productname);

try
{
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=FourPoints","sa","admin123");
	stmt=con.createStatement();
}

catch(Exception e)
{
	System.out.println(e.getMessage());
}

try
{
	stmt = con.createStatement();
	rs = stmt.executeQuery("SELECT * FROM electronics");
	md = rs.getMetaData();
	int count = md.getColumnCount();
	Pstmt =con.prepareStatement("select * from electronics where productname=?");
	Pstmt.setString(1, productname);
	rslt = Pstmt.executeQuery();

	if(rslt.next())
			 {
			 }
	for (int i=1; i<=count; i++) 
	{
		out.println(md.getColumnName(i));
		out.print(":");
		out.println(rslt.getString(i));
	%>
	<br>
	<%} %>
<%

}

catch (SQLException ex) {}

%>
</body>
</html>