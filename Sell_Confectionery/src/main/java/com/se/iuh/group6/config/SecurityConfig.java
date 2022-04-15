package com.se.iuh.group6.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	// Để config các vấn đề liên quan đến bảo mật
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		UserBuilder users = User.withDefaultPasswordEncoder();
		
		auth.inMemoryAuthentication()
			.withUser(users.username("toan").password("toan").roles("MANAGER"))
			.withUser(users.username("hung").password("hung").roles("EMPLOYEE"))
			.withUser(users.username("hoai").password("hoai").roles("EMPLOYEE"))
			.withUser(users.username("vu").password("vu").roles("EMPLOYEE"))
			.withUser(users.username("nam").password("nam").roles("EMPLOYEE"))
			.withUser(users.username("tri").password("tri").roles("ADMIN"));
			
	}
}
