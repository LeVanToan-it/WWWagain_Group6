package com.se.iuh.group6.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "order_detail")
@IdClass(OrderDetailPK.class)
public class OrderDetail {
	@Id
	@ManyToOne
	@JoinColumn(name = "order_id")
	private Orders orders;
	
	@Id
	@ManyToOne
	@JoinColumn(name = "product_id")
	private Product product;
	
	@Column(name = "quality")
	private int quality;
	
	@Column(name = "unit_price")
	private double unitPrice;
	
	public OrderDetail() {
		// TODO Auto-generated constructor stub
	}
}
