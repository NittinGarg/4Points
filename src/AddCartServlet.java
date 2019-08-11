import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AddCartServlet extends HttpServlet {

	public  void doMethod(HttpServletRequest req, HttpServletResponse res)
	{
		String pName = req.getParameter("pName");
		String pQuantity = req.getParameter("pQuantity");
		
		if(req.getSession().getAttribute("cart") ==null)
		{
			ArrayList<String> productsInCart = new ArrayList<String>();
			req.getSession().setAttribute("cart",productsInCart);
			
		}
		
		
		Object items = req.getSession().getAttribute("cart");
		ArrayList<Store> productsInCart = (ArrayList<Store>) items;
		
		productsInCart.add(new Store(pName,pQuantity));
		
		System.out.println("++++++Product Added+++++++");
		for(Store p: productsInCart) {
			System.out.println(p);
		}
			
	}
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) 
	{
		doMethod(req,res);
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) 
	{
		doMethod(req,res);
	}

}

