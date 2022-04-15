package com.se.iuh.group6.entity;

import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class OrderDetailPK implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7261711031310220491L;

	private int order;
	private int product;
	
	public OrderDetailPK() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + order;
		result = prime * result + product;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		OrderDetailPK other = (OrderDetailPK) obj;
		if (order != other.order)
			return false;
		if (product != other.product)
			return false;
		return true;
	}
	
	
}
