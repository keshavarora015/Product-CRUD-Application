package com.productcart.userdao;

public interface UserDao {
	public void addUser(User user);
	public User getUser(String name, String Password);
	

}
