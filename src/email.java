import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ContactUs")
public class email extends HttpServlet{

	/**
	 * 
	 */
	
	public void doMethod(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		String name = request.getParameter("name");
		String PhoneNumber = request.getParameter("phone");
		String FromEmailAddress = request.getParameter("email");
		
		String [] recepients =new String[]{};
		String [] bccRecepients =new String[]{"nittingarg21@gmail.com"};
		String subject ="hi";
		String message1 =request.getParameter("message");
		String message =message1+"  "+" MObile number :" +PhoneNumber;
		new SendEmail().sendMail(recepients, bccRecepients, subject, message);
	}
		
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		doMethod(request,response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		doMethod(request,response);
	}
}

