import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/rquiz")
public class Question extends HttpServlet{
	
	public  void doMethod(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException, ClassNotFoundException, SQLException
	{
		String question = req.getParameter("ques");
		String OptionA = req.getParameter("Opta");
		String OptionB = req.getParameter("Optb");
		String OptionC = req.getParameter("Optc");
		String OptionD = req.getParameter("Optd");
		String Answer = req.getParameter("ans");
		
		Connection  con = DbConnection.dbConnection("mysql");
		
		UsersTable.addques(question,OptionA,OptionB,OptionC,OptionD,Answer,con);
		
		res.sendRedirect("RAdmin.html");
			
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
