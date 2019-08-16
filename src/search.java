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

@WebServlet("/searchp")

public class search extends HttpServlet {
	
	
	public  void doMethod(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException, ClassNotFoundException, SQLException
	{
		String productsearch = req.getParameter("psearch");
		
		
		
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
