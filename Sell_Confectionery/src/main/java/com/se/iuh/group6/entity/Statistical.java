package com.se.iuh.group6.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "statistical")
public class Statistical {
	@Id
	private int id;
	
	@Column(name = "statistical_date")
	private Date statisticalDate;
	@Column(name = "total_money")
	private double total_money;
	@Column(name = "income")
	private double income;
	@Column(name = "outcome")
	private double outcome;
	
	@ManyToOne
	@JoinColumn(name = "user_id")
	private Users users;
	
}
