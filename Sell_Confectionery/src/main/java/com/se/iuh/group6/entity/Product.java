package com.se.iuh.group6.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "products")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "product_name")
	private String productName;
	
	@Column(name = "price")
	private double price;
	
	@Column(name = "publisher")
	private String publisher;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProductName() {
		return productName;
	}
	public void setName(String productName) {
		this.productName = productName;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(int id, String productName, double price, String publisher) {
		super();
		this.id = id;
		this.productName = productName;
		this.price = price;
		this.publisher = publisher;
	}
	@Override
	public String toString() {
		return "Product [id=" + id + ", productName=" + productName + ", price=" + price + ", publisher=" + publisher + "]";
	}
	
	
}
