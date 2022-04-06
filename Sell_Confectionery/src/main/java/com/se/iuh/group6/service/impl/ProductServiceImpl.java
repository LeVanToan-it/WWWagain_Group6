package com.se.iuh.group6.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.se.iuh.group6.dao.ProductDAO;
import com.se.iuh.group6.entity.Product;
import com.se.iuh.group6.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAO;
	
	@Override
	@Transactional
	public List<Product> getAllProduct() {
		// TODO Auto-generated method stub
		return productDAO.getAllProduct();
	}

	@Override
	@Transactional
	public Product getProductById(int productId) {
		// TODO Auto-generated method stub
		return productDAO.getProductById(productId);
	}

	@Override
	@Transactional
	public void saveOrUpdateProduct(Product product) {
		productDAO.saveOrUpdateProduct(product);
	}

	@Override
	@Transactional
	public void deleteProduct(int productId) {
		productDAO.deleteProduct(productId);
	}

}
