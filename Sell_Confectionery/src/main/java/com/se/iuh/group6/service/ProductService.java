package com.se.iuh.group6.service;

import java.util.List;

import com.se.iuh.group6.entity.Product;

public interface ProductService {
	public List<Product> getAllProduct();
	public Product getProductById(int productId);
	public void saveOrUpdateProduct(Product product);
	public void deleteProduct(int productId);
}
