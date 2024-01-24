package com.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ServiceDBUtil {
	private static Connection conn=null;
	private static Statement stmt=null;
	private static ResultSet rs =null;
	
	
	public static boolean InsertService(String name, String charge, String Des) {
		boolean isSuccess =false;

		try {
			conn = DBConnector.getConnection();
			stmt = conn.createStatement();
			String sql = "insert into services values (0,'"+name+"','"+charge+"','"+Des+"')";
			int RS =stmt.executeUpdate(sql);
			
			if(RS>0) {
				isSuccess =true;
			}
			
			else {
				isSuccess=false;
			}	
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	//choose update
	public static List<Services> validate(String ID){
		int convertid=Integer.parseInt(ID);
		ArrayList<Services> sr= new ArrayList<>();
		 try {
			 conn=DBConnector.getConnection();
			 stmt=conn.createStatement();
			 String sql="select * from services where SID='"+convertid+"'";
			 rs = stmt.executeQuery(sql);
			 
			 if(rs.next()) {
				 int id = rs.getInt(1);
				 String name= rs.getString(2);
				 String chrg=rs.getString(3);
				 String des=rs.getString(4);
				 
				 Services s  =new Services(id,name,chrg,des);
				 sr.add(s);
			 }
			 
		 }catch(Exception e) {
			 e.printStackTrace();
	}
		 
		 return sr;
}
	
	
	//update service
		public static boolean updateServ(String ID, String name, String charge, String Des) {
			int convertid =Integer.parseInt(ID);
			boolean isSuccess=false;
			
			try {
				conn=DBConnector.getConnection();
				stmt=conn.createStatement();
				String sql="update services set ServiceName='"+name+"', ServiceCharge='"+charge+"', Description='"+Des+"' where SID='"+convertid+"' "; 
				int RS = stmt.executeUpdate(sql);
				
				if(RS>0) {
					isSuccess=true;
				}
				
				else {
					isSuccess=false;
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
		}
	
	
	
	
	
	
	
	
	
	
	//search services
	public static List<Services> getServiceDetails(String ID) {
		int convertid=Integer.parseInt(ID);
		
		ArrayList<Services> sr =new ArrayList<>();
		try {
				conn=DBConnector.getConnection();
				stmt=conn.createStatement();
				
				String sql="select * from services where id='"+convertid+"'";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					String Name=rs.getString(2);
					String chrg=rs.getString(3);
					String dis=rs.getString(4);
					
					Services serv = new Services(Name,chrg,dis);
					sr.add(serv);
					
				}
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return sr;
	}
	
	//delete
	public static boolean deleteService(String ID) {
		int convertid=Integer.parseInt(ID);
		boolean isSuccess=false;
		try {
			conn=DBConnector.getConnection();
			stmt=conn.createStatement();
			String sql="delete from services where SID='"+convertid+"'";
			int RS=stmt.executeUpdate(sql);
			
			if(RS>0) {
				isSuccess=true;
			}
			
			else {
				isSuccess=false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return isSuccess;
	}
	

	

}
