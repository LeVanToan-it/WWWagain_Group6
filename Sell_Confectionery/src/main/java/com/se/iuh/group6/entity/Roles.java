package com.se.iuh.group6.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "roles")
public class Roles {
	@Id
	private int id;
	
	@Column(name = "role_name")
	private String roleName;

}
