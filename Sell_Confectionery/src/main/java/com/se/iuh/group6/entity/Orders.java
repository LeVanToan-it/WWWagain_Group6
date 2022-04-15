package com.se.iuh.group6.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "orders")
public class Orders {
	@Id
	private int id;
	
	@Column(name = "order_date")
	private Date orderDate;
	
	@Column(name = "total_money")
	private double totalMoney;
	
	@Column(name = "vat")
	private double vat;
	
	@ManyToOne
	@JoinColumn(name = "username")
	private Users users;
}
