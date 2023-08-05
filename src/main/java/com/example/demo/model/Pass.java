package com.example.demo.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Pass")
public class Pass {
	@Id
	@Column(name = "mobile")
	private String mobile;
	@Column(name = "password",nullable = false)
	private String password;
	@Override
	public String toString() {
		return "Pass [mobile=" + mobile + ", password=" + password + "]";
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	

}
