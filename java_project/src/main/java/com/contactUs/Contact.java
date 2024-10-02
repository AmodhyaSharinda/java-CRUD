package com.contactUs;

public class Contact {

	
	private int idcontact; 
	private String Username;
	private String email;
	private String phone;
	private String msg;
	public Contact(int idcontact, String username, String email, String phone, String msg) {
		this.idcontact = idcontact;
		this.Username = username;
		this.email = email;
		this.phone = phone;
		this.msg = msg;
	}
	public int getIdcontact() {
		return idcontact;
	}
	public String getUsername() {
		return Username;
	}
	public String getEmail() {
		return email;
	}
	public String getPhone() {
		return phone;
	}
	public String getMsg() {
		return msg;
	} 
	
	
	
}
