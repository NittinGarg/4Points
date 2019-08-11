import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class RemoveCartServlet extends HttpServlet{
	
	

		public  void doMethod(HttpServletRequest req, HttpServletResponse res)
		{
			String pName = req.getParameter("pName");
			int pQuantity = Integer.parseInt(req.getParameter("pQuantity"));
			
			if(req.getSession().getAttribute("cart") ==null)
			{
				ArrayList<String> productsInCart = new ArrayList<String>();
				req.getSession().setAttribute("cart",productsInCart);
				
			}
			
			
			Object items = req.getSession().getAttribute("cart");
			ArrayList<Store> productsInCart = (ArrayList<Store>) items;
			Iterator<Store> productIte = productsInCart.iterator();
			
			
		//	productsInCart.remove(pName);
			
			System.out.println("++++Product Removed++++");
			while (productIte.hasNext()) 
			{
				Store p = productIte.next();
				
				if (p.getProductName().equals(pName))
				{
					if (p.getProductQuantity() == pQuantity)
					{
						productsInCart.remove(p);
					}
					if (p.getProductQuantity() > pQuantity)
					{
						p.setProductQuantity(p.getProductQuantity() - pQuantity);
					}
				}
			}
			
			
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



