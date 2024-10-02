package com.customer;

public class Customer {
	
	private int idCustomer; 
	private String name;
	private String email;
	private String phone;
	private String username; 
	private String password;
	
	
	public Customer(int idCustomer, String username, String password, String name, String email, String phone) {
		this.idCustomer = idCustomer;
		this.username = username;
		this.password = password;
		this.name = name;
		this.email = email;
		this.phone = phone;
	}


	public int getIdCustomer() {
		return idCustomer;
	}


	public String getName() {
		return name;
	}


	public String getEmail() {
		return email;
	}


	public String getPhone() {
		return phone;
	}


	public String getUsername() {
		return username;
	}


	public String getPassword() {
		return password;
	}

	
	

}
