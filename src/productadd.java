import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addproduct")

public class productadd extends HttpServlet{

	public  void doMethod(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException, ClassNotFoundException, SQLException
	{
		String pname = req.getParameter("name");
		String pquantity = req.getParameter("quantity");
		String pprice = req.getParameter("price");
		String category = req.getParameter("product");
		int pquantity1 = Integer.parseInt(pquantity);
		int pprice1 = Integer.parseInt(pprice);
		System.out.println(category);
	//	String Btn = req.getParameter("checkout");
//		String seller = req.getParameter("seller");
		
		Connection  con = DbConnection.dbConnection("mssql");
		
		if(category.equals("electronics"))
		{
			UsersTable.insertelectronics(pname,pquantity1,pprice1,con);
			res.sendRedirect("SelectCategory1.jsp");
		}	
		
		else if(category.equals("clothes"))
		{
			UsersTable.insertclothes(pname,pquantity1,pprice1,con);
			res.sendRedirect("SelectCategory1.jsp");
		}
		
		else if(category.equals("footwear"))
		{
			UsersTable.insertfootwear(pname,pquantity1,pprice1,con);
			res.sendRedirect("SelectCategory1.jsp");
		}
		
		else if(category.equals("furniture"))
		{
			UsersTable.insertfurniture(pname,pquantity1,pprice1,con);
			res.sendRedirect("SelectCategory1.jsp");
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
