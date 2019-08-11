import java.sql.*;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {

	public static Connection dbConnection(String dbName) throws SQLException, ClassNotFoundException	{
		Connection conn = null;
		
		if( dbName.equalsIgnoreCase("mssql")){
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  
			
			conn=DriverManager.getConnection(  
					"jdbc:sqlserver://localhost:1433;databaseName=FourPoints","sa","admin123"); 
		//	System.out.println("nitin");
			return conn;
		}
		else{
			Class.forName("oracle.jdbc.driver.OracleDriver");  
			  
			//step2 create  the connection object  
			conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1433","sa","admin123");  
			return conn;
		}
		
		
		
	}
	
	
}
