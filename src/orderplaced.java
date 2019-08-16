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

@WebServlet("/order")

public class orderplaced extends HttpServlet{

	public  void doMethod(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException, ClassNotFoundException, SQLException
	{
	String country = req.getParameter("country");
	String fname = req.getParameter("Fname");
	String lname = req.getParameter("Lname");
	String address = req.getParameter("Address");
	String asu = req.getParameter("ASU");
	String town = req.getParameter("Town");
	String state = req.getParameter("State");
	String zipcode = req.getParameter("pcode");
	String email = req.getParameter("email");
	String phone = req.getParameter("phone");
	System.out.println(phone);
			
		
			
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
