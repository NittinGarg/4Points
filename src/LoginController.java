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

@WebServlet("/register")

public class LoginController extends HttpServlet {
	
	
	public  void doMethod(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException, ClassNotFoundException, SQLException
	{
		String username = req.getParameter("user-name");
		String password = req.getParameter("user-password");
		String fname = req.getParameter("firstname");
		String lname = req.getParameter("lastname");
		String phone = req.getParameter("Contact");

		Connection  con = DbConnection.dbConnection("mssql");
		String result = UsersTable.checkuser(username,con);
		
	//	System.out.println("result"+ result);
		if(username.equals(result))
			{
				res.sendRedirect("eregister.jsp");
			}
		else
			{
			UsersTable.insertRecord(username,password,fname,lname,phone,con);
		//	UsersTable.usertable(username,con);
				res.sendRedirect("Loggedin.jsp");
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
