package com.se.iuh.group6.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "user_role")
@IdClass(UserRolePK.class)
public class UserRole {
	@Id
	@ManyToOne
	@JoinColumn(name = "username")
	private Users users;
	
	@Id
	@ManyToOne
	@JoinColumn(name = "role_id")
	private Roles roles;
	
	public UserRole() {
		// TODO Auto-generated constructor stub

	}
}