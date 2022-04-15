package com.se.iuh.group6.entity;

import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class UserRolePK implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1880447036101148250L;
	
	private String users;
	private int roles;
	
	public UserRolePK() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + roles;
		result = prime * result + ((users == null) ? 0 : users.hashCode());
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
		UserRolePK other = (UserRolePK) obj;
		if (roles != other.roles)
			return false;
		if (users == null) {
			if (other.users != null)
				return false;
		} else if (!users.equals(other.users))
			return false;
		return true;
	}
	
	
}
