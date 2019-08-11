import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Logging")

public class LoginConfirm extends HttpServlet{

	public  void doMethod(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException, ClassNotFoundException, SQLException
	{
		String UserName = req.getParameter("uName");
		String Password = req.getParameter("pwd");
		String user = req.getParameter("user");
		String seller = req.getParameter("seller");
		
		Connection  con = DbConnection.dbConnection("mssql");
		
		if(user.equals("user"))
		{
		String result = UsersTable.verifyuser(UserName,Password,con);
		
		if(result=="true")
		{
			System.out.println(UserName);
		
			if(UserName.equals("Admin"))
			{
				PrintWriter out = res.getWriter();
				out.println("ff");
			}
			else
			{
		
				res.sendRedirect("Loggedin.html");
			}
			
		}
		else
		{
			res.sendRedirect("RLogin.html");
		}
		}
		
		else {
			String result1 = UsersTable.verifySuser(UserName,Password,con);
			
			if(result1=="true")
			{
				System.out.println(UserName);
			
				if(UserName.equals("Admin"))
				{
					PrintWriter out = res.getWriter();
					out.println("ff");
				}
				else
				{
			
					res.sendRedirect("Loggedin.html");
				}
				
			}
			else
			{
				res.sendRedirect("RLogin.html");
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
