import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

@WebServlet("/category")

public class Category extends HttpServlet{

	public  void doMethod(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException, ClassNotFoundException, SQLException
	{
		
		String category = req.getParameter("category1");
		String Pbtn = req.getParameter("Add1");
		if(Pbtn.equals("Add"))
		{
			
			req.setAttribute("category1", category);
			req.getRequestDispatcher("Addproduct1.jsp").forward(req, res);
			//res.sendRedirect("Addproduct1.jsp");
			
		}
		else
		{
			req.setAttribute("category1", category);
			req.getRequestDispatcher("Productupdate.jsp").forward(req, res);
	//		res.sendRedirect("Productupdate.jsp");
		}
	//	res.sendRedirect("Productupdate.jsp");
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
