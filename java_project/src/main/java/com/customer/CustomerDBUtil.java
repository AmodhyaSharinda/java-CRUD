package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class CustomerDBUtil {
	
	public static List<Customer> validateCustomer(String userName, String password) {
		
		ArrayList<Customer> customer = new ArrayList<>();
		
		//create DB Connection
		String url = "jdbc:mysql://localhost:3306/lundry";
		String user = "root";
		String pass = "amodhya@200211";
		
		//Validate 
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql = "select * from lundry.customer where username='"+userName+"' and password='"+password+"'";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String username = rs.getString(2);
				String userpass = rs.getString(3);
				String name = rs.getString(4);
				String email = rs.getString(5);
				String phone = rs.getString(6);
				
				Customer c = new Customer(id, username, userpass, name, email, phone);
				customer.add(c);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
			
		
		return customer;
		
	}
	
}
