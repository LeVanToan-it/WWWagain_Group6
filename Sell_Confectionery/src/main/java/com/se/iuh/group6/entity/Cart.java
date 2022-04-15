package com.se.iuh.group6.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "cart")
public class Cart {
	@OneToOne
	private String username;
	
	@Column(name = "quality")
	private int quality;
	@Column(name = "unit_price")
	private float unitPrice;
	
	@OneToMany(mappedBy = "cart")
	private List<Product> listProduct;

}
