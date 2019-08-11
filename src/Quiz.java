import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Quiz extends HttpServlet {

	public  void doMethod(HttpServletRequest req, HttpServletResponse res) throws IOException, ClassNotFoundException, SQLException
	{
		
		PreparedStatement stmt  =null;
		ResultSet rslt = null;
		Connection con = null;
		System.out.println("outside");
			con = DbConnection.dbConnection("mysql");
		
		try {
			stmt =con.prepareStatement("select * from quiz");
			rslt = stmt.executeQuery();
			PrintWriter out = res.getWriter();
		//	out.println("Hello  :::");
			//String ques = rslt.getString(1);
			
			ArrayList<Rquiz> quesn = new ArrayList<Rquiz>();
			while(rslt.next())
			{
				quesn.add(new Rquiz(rslt.getString(1), rslt.getString(2), rslt.getString(3), rslt.getString(4), rslt.getString(5)));
		//	System.out.println("inside");
//				out.println(rslt.getString(1));
//				out.println(rslt.getString(2));
//				out.println(rslt.getString(3));
//				out.println(rslt.getString(4));
//				out.println(rslt.getString(5));
				req.getSession().setAttribute("ques",rslt.getString(1));
			//	res.sendRedirect("a.jsp");
//				
			}			
			res.sendRedirect("a.jsp");
			for(Rquiz p: quesn) {
				out.println(p);
			}
				
			
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
				String[] a = new String[6];
				int i=0;
		
			
	}
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException 
	{
		try {
			doMethod(req,res);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException 
	{
		try {
			doMethod(req,res);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
