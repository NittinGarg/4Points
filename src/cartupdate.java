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

@WebServlet("/cartupdate2")

public class cartupdate extends HttpServlet{

	public  void doMethod(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException, ClassNotFoundException, SQLException
	{
		
		String category = req.getParameter("pcat");
		System.out.println(category);
		String name = req.getParameter("pname");
		System.out.println(category);
		String price = req.getParameter("pprice");
		String quantity = req.getParameter("pquantity");
		String user = "maggo";
		int price1 = Integer.parseInt(price);
		int quantity1 = Integer.parseInt(quantity);
		Connection  con = DbConnection.dbConnection("mssql");
		UsersTable.cart(user,name,price1,quantity1,category, con);
//			req.setAttribute("category1", category);
//			
//			req.getRequestDispatcher("Addproduct1.jsp").forward(req, res);
//			//res.sendRedirect("Addproduct1.jsp");
			
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
