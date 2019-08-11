package asd;

public class Store {

	String ProductName;
//	int ProductQuantity;
	public Store()
	{
		
	}
	public Store(String pName)
	{
		ProductName = pName;
		//ProductQuantity = Integer.parseInt(pQuantity);
	}

	public String getProductName() {
		return ProductName;
	}

	public void setProductName(String productName) {
		this.ProductName = productName;
	}

//	public int getProductQuantity() {
//		return ProductQuantity;
//	}
//
//	public void setProductQuantity(int productQuantity) {
//		this.ProductQuantity = productQuantity;
//	}
	public String toString() {
		return "Product: " + ProductName ;
	}
	
	
}
