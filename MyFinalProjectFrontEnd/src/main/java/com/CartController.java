package com;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.daoimpl.CartDAOImpl;
import com.model.Cart;

import com.model.Product;


@Controller
public class CartController {


	@Autowired
	CartDAOImpl bi;
	
	@RequestMapping(value="cart", method=RequestMethod.GET)
    public ModelAndView mycartpage(@RequestParam("productId") int productId)
    {
		System.out.println("1");
        Product c1=bi.single_object(productId);
        System.out.println("2");
      
        int grandtotal=0;
    
        Cart cart1=new Cart();
        cart1.setProductId(c1.getProductId());
        cart1.setProductName(c1.getProductName());
        cart1.setProductPrice(c1.getPrice());
        cart1.setQuantity(1);
        cart1.setStatus('N');
        
        cart1.setUserName("user");
        bi.cartsave(cart1);
       
    List<Cart> c5=bi.cartlist();
    for(Cart l2:c5)
    {
        grandtotal=grandtotal+(l2.getProductPrice()*l2.getQuantity());
    }
        ModelAndView m=new ModelAndView("cart");
        m.addObject("cart1",c5);
        m.addObject("grandtotal",grandtotal);
        return m;
        }

@RequestMapping(value="/cartdisplay", method=RequestMethod.GET)
public ModelAndView cartdisplay1()
{
	int grandtotal=0;
	List<Cart> cl=bi.cartlist();
	ModelAndView m0=new ModelAndView("cart");
	for(Cart l15:cl)
	{
		grandtotal=grandtotal+(l15.getProductPrice()*l15.getQuantity());
	}
    m0.addObject("grandtotal",grandtotal);
	m0.addObject("cart1",cl);
	return m0;
}
@RequestMapping(value="delete1", method=RequestMethod.POST)
public ModelAndView delete_product1(@RequestParam("ProductId") int productid)
{
	bi.deleteRow(productid);
	   Cart c7=new Cart();
       ModelAndView model3 = new ModelAndView("cart");
       List<Cart> c10=bi.cartlist();
  	       int grandtotal=0;
       for(Cart l22:c10)
    	   
   	{
   		grandtotal=grandtotal+(l22.getProductPrice()*l22.getQuantity());
   	}
    model3.addObject("grandtotal",grandtotal);
         model3.addObject("cart1",c10);
         return model3;

}
	
	
@RequestMapping(value="ack")
public String ack()
{
	return "ackOrder";
}
	
}
