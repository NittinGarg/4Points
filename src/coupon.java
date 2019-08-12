import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/coupon1")

public class coupon extends HttpServlet{

	public  void doMethod(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException, ClassNotFoundException, SQLException
	{
		String couponcode = req.getParameter("couponcode");
//		String seller = req.getParameter("seller");
		
		Connection  con = DbConnection.dbConnection("mssql");
		
			PreparedStatement stmt  =null;
			ResultSet rslt = null;

			try {
				stmt =con.prepareStatement("select * from coupon where couponcode=?");
				System.out.println(couponcode);
				stmt.setString(1, couponcode);
				rslt = stmt.executeQuery();
				System.out.println(rslt.getString(1));
				if (rslt.next())
				{
					String discount = rslt.getString(2);
					System.out.println(discount);
					req.getSession().setAttribute("ques",discount);
					res.sendRedirect("ccheckout.jsp");
				}
				else
				{
					res.sendRedirect("cecheckout.jsp");
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
		
		
			
	}
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException 
	{
		try {
			doMethod(req,res);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) 
	{
		try {
			doMethod(req,res);
		} catch (ClassNotFoundException | IOException | ServletException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
