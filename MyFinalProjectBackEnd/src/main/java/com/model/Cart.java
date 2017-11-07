package com.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/*import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.springframework.stereotype.Component;
*/


/*@Component*/
@Entity
@Table
public class Cart /*implements Serializable*/
{
	
	/*@Id
	@GeneratedValue
	int cartItemId;
	
	int orderId,quantity,price;
	String userName;
	String status,productName;
	public int getCartItemId() {
		return cartItemId;
	}
	public void setCartItemId(int cartItemId) {
		this.cartItemId = cartItemId;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}

	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	*/
	
	//private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	int cartId;
	
	String cartProdName;
	int cartproductId;
	
	@OneToOne(fetch= FetchType.LAZY)
	@JoinColumn(name="userEmail")
	User CartUserDetails;
	

	int cartPrice;
	int cartQnty;
	String cartImg;
	/* 
	 public Cart(int cartID, int cartProductID, User CartUserDetails,int cartPrice, int cartQnty)
	 {
		 this.cartId=cartID;
		 this.cartPrice=cartPrice;
		 this.cartproductId=cartProductID;
		 this.cartQnty=cartQnty;
		 this.CartUserDetails=CartUserDetails;
	 }*/

	 public String getCartProdName() {
			return cartProdName;
		}

		public void setCartProdName(String cartProdName) {
			this.cartProdName = cartProdName;
		}
	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public int getCartproductId() {
		return cartproductId;
	}

	public void setCartproductId(int cartproductId) {
		this.cartproductId = cartproductId;
	}

	public User getCartUserDetails() {
		return CartUserDetails;
	}

	public void setCartUserDetails(User cartUserDetails) {
		CartUserDetails = cartUserDetails;
	}

	public int getCartPrice() {
		return cartPrice;
	}

	public void setCartPrice(int price) {
		this.cartPrice = price;
	}

	public int getCartQnty() {
		return cartQnty;
	}

	public void setCartQnty(int cartQnty) {
		this.cartQnty = cartQnty;
	}

	public String getCartImg() {
		return cartImg;
	}

	public void setCartImg(String cartImg) {
		this.cartImg = cartImg;
	}
	
	
	
	
}
