package com.example.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Contr")
public class Contr {
	@Override
	public String toString() {
		return "Contr [id=" + mobile + ", password=" + password + "]";
	}
	@Id
	private String mobile;
	private String password;
	public String getId() {
		return mobile;
	}
	public void setId(String id, String mobile) {
		this.mobile = mobile;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
