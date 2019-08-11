import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Slogin")

public class SellerConfirm extends HttpServlet {
	
	
	public  void doMethod(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException, ClassNotFoundException, SQLException
	{
		String username = req.getParameter("uName");
		String password = req.getParameter("pwd");
		String cpassword = req.getParameter("cpwd");
		String fname = req.getParameter("fName");
		String lname = req.getParameter("LName");
		String phone = req.getParameter("cphone");
		String gid = req.getParameter("gid");

		Connection  con = DbConnection.dbConnection("mssql");
		String result = UsersTable.checkSuser(username,con);
		String result1 = UsersTable.checkgid(gid,con);
	//	System.out.println("result"+ result);
		if(username.equals(result))
			{
				res.sendRedirect("SUserid.html");
			}
		else if(gid.equals(result1))
			{
				res.sendRedirect("Sgid.html");
			}
		else if (password.equals(cpassword) )
			{
				UsersTable.insertSRecord(username, cpassword, fname, lname, phone, gid, con);
				res.sendRedirect("Loggedin.html");
			}
		else
			{
				res.sendRedirect("SPassword.html");
			}
		}
		    
	


	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException
	{
		
		try {
			doMethod(req, res);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException
	{
		
		
		try {
			doMethod(req, res);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
