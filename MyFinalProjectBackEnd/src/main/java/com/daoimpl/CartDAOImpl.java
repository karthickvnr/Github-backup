package com.daoimpl;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.CartDAO;
import com.model.Cart;
import com.model.Product;

@Repository("cartDAO")
public class CartDAOImpl implements CartDAO
{
	
	@Autowired
	SessionFactory sessionFactory;
	public void cartsave(Cart ap) {
		System.out.println("Cart DAO");
		try
		{
		Session session= sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		session.save(ap);
		tx.commit();
		session.flush();
		session.close();
		} 
		catch(Exception e)
		{
			System.out.println("Error"+e);
		}		
	}
	 public List<Cart> cartlist() {
	    	Session session =sessionFactory.openSession();
	    	 Transaction transaction =  session.beginTransaction();
	    	List<Cart> productList=null;
	        try {
	        productList= session.createQuery("from Cart").list();   
      	    transaction.commit();                 
        }
       catch (Exception e) {
       transaction.rollback();
       e.printStackTrace();
	       }
	     session.close();
		 return productList;
	    }
	 public Product single_object(int productId)
     {
        Session session =sessionFactory.openSession();
       
	      Transaction transaction =  session.beginTransaction();
	      List<Product> b4=null;
	    	try
	        {
	    
          b4 =  session.createQuery("from Product where productId= :productId").setParameter("productId",productId).list();
      
          transaction.commit();
          session.close();             
	    }        
	    catch (Exception e) 
	    {
         transaction.rollback();
         e.printStackTrace();
      }
	     return b4.get(0);
     }
	 public void deleteRow(int productId) {  
    	   Session session =sessionFactory.openSession();
     	   Transaction transaction =  session.beginTransaction();
	       List<Cart> del=null;
	       try{
	    	 del=session.createQuery("from Cart where productId=:productId").setParameter("productId", productId).list();
	          session.delete(del.get(0));
	          transaction.commit();
            session.close();
	    
	       }
    catch(Exception e){
        transaction.rollback();
        e.printStackTrace();
  }
}

}
