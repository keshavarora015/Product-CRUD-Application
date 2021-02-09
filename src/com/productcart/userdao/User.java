package com.productcart.userdao;

public class User {
	private String username;
	private String password;
	private int id;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public User( int id,String username, String password) {
		this.id = id;
		this.username = username;
		this.password = password;
		
	}
	public User(String username, String password) {
		
		this.username = username;
		this.password = password;
	}
	public User() {
		
	}
	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + ", id=" + id + "]";
	}
	
	
	
	
	
	

}
