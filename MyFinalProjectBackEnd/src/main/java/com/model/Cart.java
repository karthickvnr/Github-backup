package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Cart 
{	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column
private int cartid;
	@Column
private int productId;
	@Column
private String productName;
	@Column
private int productPrice;
	@Column
private int quantity;
	@Column
private char status;
	@Column
private String userName;
public int getCartid() {
    return cartid;
}
public void setCartid(int cartid) {
    this.cartid = cartid;
}

public int getQuantity() {
    return quantity;
}
public int getProductPrice() {
    return productPrice;
}
public void setProductPrice(int productPrice) {
    this.productPrice = productPrice;
}
public void setQuantity(int quantity) {
    this.quantity = quantity;
}
public char getStatus() {
    return status;
}
public void setStatus(char status) {
    this.status = status;
}
public int getProductId() {
    return productId;
}
public void setProductId(int productId) {
    this.productId = productId;
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
	
}
