package com.service;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnector {
	private static String url="jdbc:mysql://localhost:3306/servicedb";
	private static String Username="root";
	private static String pwd= "Pasan899632!";
	private static Connection conn;
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(url, Username, pwd);
			
			
		}catch(Exception e) {
			System.out.println("Database Connection is not successful!");
		}
		
		return conn;
	}

}
