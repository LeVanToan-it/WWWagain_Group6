package com.se.iuh.group6.dao.impl;

import java.util.List;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.se.iuh.group6.dao.ProductDAO;
import com.se.iuh.group6.entity.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Product> getAllProduct() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Product> query = currentSession.createQuery("from products order by product_name");
		
		List<Product> products = query.getResultList();
		return products;
	}

	@Override
	public Product getProductById(int productId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Product product = currentSession.get(Product.class, productId);
		
		return product;
	}

	@Override
	public void saveOrUpdateProduct(Product product) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(product);
		
	}

	@Override
	public void deleteProduct(int productId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Product product = currentSession.get(Product.class, productId);
		
		currentSession.delete(product);
	}

}
