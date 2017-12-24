package com.dao;

import java.util.List;

import com.model.Cart;
import com.model.Product;

public interface CartDAO 
{
	  void cartsave(Cart cart1);
	  List<Cart> cartlist();
	Product single_object(int productId);
	public void deleteRow(int productId);
}
