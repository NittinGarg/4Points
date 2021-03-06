import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/removeproduct")

public class productremove extends HttpServlet{

	public  void doMethod(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException, ClassNotFoundException, SQLException
	{
		
		String category = req.getParameter("category2");
		String qnum = req.getParameter("quantity_update");
		String pname = req.getParameter("rproduct");
		System.out.println(category);
		System.out.println(qnum);
	//	String Btn = req.getParameter("checkout");
//		String seller = req.getParameter("seller");
		
		Connection  con = DbConnection.dbConnection("mssql");
		
		if(category.equals("electronics"))
		{
			UsersTable.deleteelectronics(pname,con);
			req.setAttribute("category1", category);
			req.getRequestDispatcher("Productupdate.jsp").forward(req, res);
		//	res.sendRedirect("Productupdate.jsp");
		}	
		
		else if(category.equals("clothes"))
		{
			UsersTable.deleteclothes(pname,con);
			req.setAttribute("category1", category);
			req.getRequestDispatcher("Productupdate.jsp").forward(req, res);
		}
		
		else if(category.equals("footwear"))
		{
			UsersTable.deletefootwear(pname,con);
			req.setAttribute("category1", category);
			req.getRequestDispatcher("Productupdate.jsp").forward(req, res);
		}
		
		else if(category.equals("furniture"))
		{
			UsersTable.deletefurniture(pname,con);
			req.setAttribute("category1", category);
			req.getRequestDispatcher("Productupdate.jsp").forward(req, res);
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
