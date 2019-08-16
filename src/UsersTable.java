import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsersTable {

	public static void insertRecord(String username, String password, String firstname, String lastname, String contactnumber, Connection conn)	{
		PreparedStatement stmt  =null;

		try {
			stmt =conn.prepareStatement("insert into login1 (username, password,firstname,lastname,contactnumber)values (?,?,?,?,?)");
			
			stmt.setString(1, username);
			stmt.setString(2, password);
			stmt.setString(3, firstname);
			stmt.setString(4, lastname);

			stmt.setString(5, contactnumber);
			stmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			
			try{
				stmt.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		
		
		
	}
	
	public static void cart(String username, String productname, int productprice, int productquantity, String productcat, Connection conn)	{
		PreparedStatement stmt  =null;

		try {
			stmt =conn.prepareStatement("insert into addtocart (username, productname, productprice, productquantity, productcat)values (?,?,?,?,?)");
			
			stmt.setString(1, username);
			stmt.setString(2, productname);
			stmt.setInt(3, productprice);
			stmt.setInt(4, productquantity);

			stmt.setString(5, productcat);
			stmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			
			try{
				stmt.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		
		
		
	}
	
	public static void insertSRecord(String username, String password, String firstname, String lastname, String contactnumber, String gid, Connection conn)	{
		PreparedStatement stmt  =null;

		try {
			stmt =conn.prepareStatement("insert into Slogin1 (username, password,firstname,lastname,contactnumber,gid)values (?,?,?,?,?,?)");
			
			stmt.setString(1, username);
			stmt.setString(2, password);
			stmt.setString(3, firstname);
			stmt.setString(4, lastname);
			stmt.setString(5, contactnumber);
			stmt.setString(6, gid);
			stmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			
			try{
				stmt.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		
		
		
	}
	
	public static void insertelectronics(String name, int quantity, int price, Connection conn)	{
		PreparedStatement stmt  =null;

		try {
			stmt =conn.prepareStatement("insert into electronics (name, quantity, price)values (?,?,?)");
			
			stmt.setString(1, name);
			stmt.setInt(2, quantity);
			stmt.setInt(3, price);
			
			stmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			
			try{
				stmt.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		
		
		
	}
	
	public static void insertfurniture(String name, int quantity, int price, Connection conn)	{
		PreparedStatement stmt  =null;

		try {
			stmt =conn.prepareStatement("insert into furniture (name, quantity, price)values (?,?,?)");
			
			stmt.setString(1, name);
			stmt.setInt(2, quantity);
			stmt.setInt(3, price);
			
			stmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			
			try{
				stmt.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		
		
		
	}
	
	
	public static void insertfootwear(String name, int quantity, int price, Connection conn)	{
		PreparedStatement stmt  =null;

		try {
			stmt =conn.prepareStatement("insert into footwear (name, quantity, price)values (?,?,?)");
			
			stmt.setString(1, name);
			stmt.setInt(2, quantity);
			stmt.setInt(3, price);
			
			stmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			
			try{
				stmt.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		
		
		
	}
	
	
	public static void insertclothes(String name, int quantity, int price, Connection conn)	{
		PreparedStatement stmt  =null;

		try {
			stmt =conn.prepareStatement("insert into clothes (name, quantity, price)values (?,?,?)");
			
			stmt.setString(1, name);
			stmt.setInt(2, quantity);
			stmt.setInt(3, price);
			
			stmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			
			try{
				stmt.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		
		
		
	}
	
	
	public static void deletefurniture(String name, Connection conn)	{
		PreparedStatement stmt  =null;

		try {
			stmt =conn.prepareStatement("delete from furniture where name=?");
			
			stmt.setString(1, name);
			
			stmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			
			try{
				stmt.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		
		
		
	}
	
	
	public static void deletefootwear(String name, Connection conn)	{
		PreparedStatement stmt  =null;

		try {
			stmt =conn.prepareStatement("delete from footwear where name=?");
			
			stmt.setString(1, name);
			
			stmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			
			try{
				stmt.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		
		
		
	}
	
	
	public static void deleteelectronics(String name,Connection conn)	{
		PreparedStatement stmt  =null;

		try {
			stmt =conn.prepareStatement("delete from electronics where name=?");
			
			stmt.setString(1, name);
			stmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			
			try{
				stmt.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		
		
		
	}
	
	
	public static void deleteclothes(String name, Connection conn)	{
		PreparedStatement stmt  =null;

		try {
			stmt =conn.prepareStatement("delete from clothes where name=?");
			
			stmt.setString(1, name);
			
			stmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			
			try{
				stmt.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		
		
		
	}
	
	
	public static void updatefootwear(String name, int quantity, int price, Connection conn)	{
		PreparedStatement stmt  =null;

		try {
			stmt =conn.prepareStatement("update footwear set quantity=?, price=? where name=?");
			
			stmt.setInt(1, quantity);
			stmt.setInt(2, price);
			stmt.setString(3, name);
			
			stmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			
			try{
				stmt.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
	}
	
	public static void updateclothes(String name, int quantity, int price, Connection conn)	{
		PreparedStatement stmt  =null;

		try {
			stmt =conn.prepareStatement("update clothes set quantity=?, price=? where name=?");
			
			stmt.setInt(1, quantity);
			stmt.setInt(2, price);
			stmt.setString(3, name);
			
			stmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			
			try{
				stmt.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
	}
	
	public static void updatefurniture(String name, int quantity, int price, Connection conn)	{
		PreparedStatement stmt  =null;

		try {
			stmt =conn.prepareStatement("update furniture set quantity=?, price=? where name=?");
			
			stmt.setInt(1, quantity);
			stmt.setInt(2, price);
			stmt.setString(3, name);
			
			stmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			
			try{
				stmt.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
	}
	
	public static void updateelectronics(String name, int quantity, int price, Connection conn)	{
		PreparedStatement stmt  =null;

		try {
			stmt =conn.prepareStatement("update electronics set quantity=?, price=? where name=?");
			
			stmt.setInt(1, quantity);
			stmt.setInt(2, price);
			stmt.setString(3, name);
			
			stmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			
			try{
				stmt.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
	}
	
	
	public static String verifyuser(String username, String password, Connection conn)	{
		PreparedStatement stmt  =null;
		ResultSet rslt = null;
		try {
			stmt =conn.prepareStatement("select * from login1 where username =? and password=?");
			
			stmt.setString(1, username);
			stmt.setString(2, password);
	
			rslt = stmt.executeQuery();
			
			if(rslt.next())
			 {
		//		System.out.println(rslt.getString("*"));
				
				 return "true";
			 }
			

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			
			try{
				stmt.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		return password;
		
		
		
	}
	
	public static String verifySuser(String username, String password, Connection conn)	{
		PreparedStatement stmt  =null;
		ResultSet rslt = null;
		try {
			stmt =conn.prepareStatement("select * from Slogin1 where username =? and password=?");
			
			stmt.setString(1, username);
			stmt.setString(2, password);
	
			rslt = stmt.executeQuery();
			
			if(rslt.next())
			 {
		//		System.out.println(rslt.getString("*"));
				
				 return "true";
			 }
			

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			
			try{
				stmt.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		return password;
	}
	
	public static String[] retrieveques(Connection conn)	{
		PreparedStatement stmt  =null;
		ResultSet rslt = null;
		try {
			stmt =conn.prepareStatement("select * from quiz");
			
	//		stmt.setString(1, username);
		//	stmt.setString(2, password);
	
			rslt = stmt.executeQuery();
			String[] a = new String[6];
			int i=0;
			while(rslt.next())
			 {
				a[0]=rslt.getString("question");
			//	PrintWriter out = rslt.getWriter();
				a[1]=rslt.getString("OptionA");
				a[2]=rslt.getString("OptionB");
				a[3]=rslt.getString("OptionC");
				a[4]=rslt.getString("OptionD");
				return a;
				 
			 }
			

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			
			try{
				stmt.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
//		return "1";
		return null;
		
		
		
	}
	
	public static void addques(String question, String OptionA, String OptionB,String OptionC, String OptionD, String Answer, Connection conn)	{
		PreparedStatement stmt  =null;
		
		try {
			stmt =conn.prepareStatement("insert into quiz(question,OptionA,OptionB,OptionC,OptionD,Answer) values(?,?,?,?,?,?)");
			
			stmt.setString(1, question);
			stmt.setString(2, OptionA);
			stmt.setString(3, OptionB);
			stmt.setString(4, OptionC);
			stmt.setString(5, OptionD);
			stmt.setString(6, Answer);
	
			stmt.executeUpdate();
			
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			
			try{
				stmt.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		
	}
	
	public static void usertable(String name, Connection conn)	{
		PreparedStatement stmt  =null;
		
		try {
			stmt =conn.prepareStatement("create table ? (id varchar(20))");
			
			stmt.setString(1, name);
			
	
			stmt.executeQuery();
			
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			
			try{
				stmt.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		
	}
//	
//	public static void insertitem(String productname, int productquantity, Connection conn)	{
//		PreparedStatement stmt  =null;
//
//		try {
//			stmt =conn.prepareStatement("insert into store (productname, productquantity)values (?,?)");
//			
//			stmt.setString(1, productname);
//			stmt.setInt(2, productquantity);
//		//	stmt.setString(3, firstname);
//			//stmt.setString(4, lastname);
//	
//			stmt.executeUpdate();
//
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		finally{
//			
//			try{
//				stmt.close();
//			}
//			catch(SQLException e)
//			{
//				e.printStackTrace();
//			}
//		}
//		
//		
//		
//	}
//	
//	public static void updateitem(String productname, int productquantity, Connection conn)	{
//		PreparedStatement stmt  =null;
//
//		try {
//			stmt =conn.prepareStatement("delete from store where productname = ?");
//			
//			stmt.setString(1, productname);
//			//stmt.setInt(2, productquantity);
//		//	stmt.setString(3, firstname);
//			//stmt.setString(4, lastname);
//	
//			stmt.executeUpdate();
//			
//			stmt =conn.prepareStatement("insert into store (productname, productquantity)values (?,?)");
//			
//			stmt.setString(1, productname);
//			stmt.setInt(2, productquantity);
//			stmt.executeUpdate();
//
//		} 
//		
//		catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//		finally{
//			
//			try{
//				stmt.close();
//			}
//			catch(SQLException e)
//			{
//				e.printStackTrace();
//			}
//		}
//		
//		
//		
//	}
	
	public static String checkuser(String username, Connection conn)	{
		PreparedStatement stmt  =null;
		ResultSet rslt = null;
		try {
			stmt =conn.prepareStatement("select firstname from login1 where username =?");
			
			stmt.setString(1,username);

		 rslt = stmt.executeQuery();
		 
		 if(rslt.next())
		 {
		 System.out.println("User Already Exists!!!");
		 System.out.println(rslt.getString("firstname"));
		 System.out.println(username);
			 return username;
		 }
		

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			
			try{
				stmt.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		return "a";
	}
	
	
	public static String checkSuser(String username, Connection conn)	{
		PreparedStatement stmt  =null;
		ResultSet rslt = null;
		try {
			stmt =conn.prepareStatement("select firstname from Slogin1 where username =?");
			
			stmt.setString(1,username);

		 rslt = stmt.executeQuery();
		 
		 if(rslt.next())
		 {
		 System.out.println("User Already Exists!!!");
		 System.out.println(rslt.getString("firstname"));
		 System.out.println(username);
			 return username;
		 }
		

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			
			try{
				stmt.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		return "a";
	}
	
	public static String checkgid(String gid, Connection conn)	{
		PreparedStatement stmt  =null;
		ResultSet rslt = null;
		try {
			stmt =conn.prepareStatement("select firstname from Slogin1 where gid =?");
			
			stmt.setString(1,gid);

		 rslt = stmt.executeQuery();
		 
		 if(rslt.next())
		 {
			 return gid;
		 }
		

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			
			try{
				stmt.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		return "a";
	}
	
//	public static void updateRecord(String username, String password,  Connection conn)	{
//		PreparedStatement stmt  =null;
//
//		try {
//			stmt =conn.prepareStatement("___________**update Query***_____________________");
//			
//			stmt.setString(1, "_____");
//			stmt.setString(2, "_________");
//			
//	
//			stmt.executeUpdate();
//
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		finally{
//			
//			try{
//				stmt.close();
//			}
//			catch(SQLException e)
//			{
//				e.printStackTrace();
//			}
//		}
//		
//		
//		
//	}
//
//	public static void deleteRecord(String username,  Connection conn)	{
//		PreparedStatement stmt  =null;
//
//		try {
//			stmt =conn.prepareStatement("___________**delete Query***_____________________");
//			
//			stmt.setString(1, "_____");
//
//			stmt.executeUpdate();
//
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		finally{
//			
//			try{
//				stmt.close();
//			}
//			catch(SQLException e)
//			{
//				e.printStackTrace();
//			}
//		}
//		
//		
//		
//	}
//	public static void getUsersRecord(String username,  Connection conn)	{
//		PreparedStatement stmt  =null;
//		ResultSet rslt = null;
//		try {
//			stmt =conn.prepareStatement("select firstname from login where username =?");
//			
//			stmt.setString(1,username);
//
//		 rslt = stmt.executeQuery();
//		 
//		 while(rslt.next())
//		 {
//			 System.out.println("FirstName :::"+rslt.getString("firstname"));
//		 }
//
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		finally{
//			
//			try{
//				stmt.close();
//			}
//			catch(SQLException e)
//			{
//				e.printStackTrace();
//			}
//		}
//		
		
		
	//}
}
