package com.financial;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class financialDBUtil {
	
	
	
		
		private static Connection con =null;
		private static Statement stmt =null;
		private static ResultSet rs =null;
		
		
		public static List<financial> validate(String userName, String password){
		
		ArrayList<financial> fin = new ArrayList<>();
		
		
		//*create database connection
		//*String url = "jdbc:mysql://localhost:3306/event";
		//*String user = "root";
		//*String pass = "ishara1999";
		
		
		//validate
		
		try {
			 
		//*	Class.forName("com.mysql.jdbc.Driver");
		     
		//*     Connection con = DriverManager.getConnection(url, user, pass);
		//*	 Statement stmt = con.createStatement();
			
			
			
			   con = DBconnect.getConnection();
			   stmt = con.createStatement();
			   
				String sql = "select * from financial where username = '"+userName+"'and password='"+password+"'";
				//*ResultSet rs = stmt.executeQuery(sql);
				rs = stmt.executeQuery(sql);
				
				if(rs.next()) {
					int id = rs.getInt(1);
					String name =rs.getString(2);
					String email =rs.getString(3);
					String phone =rs.getString(4);
					String userU =rs.getString(5);
					String passU =rs.getString(6);
					
					financial f = new financial(id, name, email, phone, userU ,passU);
					fin.add(f);
				}
		}  	
		catch(Exception e) {
			e.printStackTrace();
		}
		return fin;
	
		
		
		
	}

	
	//create employee data method
	public static boolean insertfinancial(String name,String eid,String email,String phone,String ot,String bonus,String salary) {
		boolean isSuccess = false;
		
	//*	//create database connection//
	//*	String url = "jdbc:mysql://localhost:3306/event";
	//*	String user = "root";
	//*	String pass = "ishara1999";
		
	 
		 
		try {
			
			//connection method //
		//*	 Class.forName("com.mysql.jdbc.Driver");
		     
		//*     Connection con = DriverManager.getConnection(url, user, pass);
		//*	 Statement stmt = con.createStatement();
			 
			 //c.m/

			con = DBconnect.getConnection();
			stmt = con.createStatement();
			 
			String sql ="insert into salary values(0,'"+name+"','"+eid+"','"+email+"','"+phone+"', '"+ot+"','"+bonus+"', '"+salary+"' )";
			int rs= stmt.executeUpdate(sql);  
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	
	//create details for the display
	
public static List<salary> getsalaryDetails(String id){
	
	
	int convertedID = Integer.parseInt(id);
		
		
		ArrayList<salary> sal = new ArrayList<>();
		
		
		//create database connection
	//*	String url = "jdbc:mysql://localhost:3306/event";
	//*	String user = "root";
	//*	String pass = "ishara1999";
		
		
		//validate
		
		try {
			 
		//*	Class.forName("com.mysql.jdbc.Driver");
		     
		 //*    Connection con = DriverManager.getConnection(url, user, pass);
		//*	 Statement stmt = con.createStatement();
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from salary where id = '"+convertedID+"'";
			//*	 ResultSet rs = stmt.executeQuery(sql);
			
			
			rs = stmt.executeQuery(sql);
			
			
			
				while(rs.next()) {
					int id1 = rs.getInt(1);
					String name1 =rs.getString(2);
					String eid1 =rs.getString(3);
					String email1 =rs.getString(4);
					String phone1 =rs.getString(5);
					String ot1 =rs.getString(6);
					String bonus1 =rs.getString(7);
					String salary1 =rs.getString(8);
					
					salary s = new salary(id1, name1, eid1, email1, phone1, ot1 ,bonus1, salary1);
					sal.add(s);
				}
		}  	
		catch(Exception e) {
			e.printStackTrace();
		}
		return sal;
	
		
		
		
	}
	


	public static boolean updatefinancial(String id, String name, String email, String phone, String username, String password) {
		
		
		boolean isSuccess = false;
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			 
			String sql ="update financial set name='"+name+"',email ='"+email+"',phone ='"+phone+"',username = '"+username+"',password='"+password+"'" + "where id='"+id+"'";
			int rs= stmt.executeUpdate(sql);  

			if(rs >0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
				
			
	return isSuccess;	
	}
	
	
	
	//data retriveing part
	
	

	public static List<financial> getfinancialDetails(String id){
		
		
		int convertedID = Integer.parseInt(id);
			
			
			ArrayList<financial> fin = new ArrayList<>();
	
			
			try {
				
				con = DBconnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from financial where id = '"+convertedID+"'";
				rs = stmt.executeQuery(sql);
				

				while(rs.next()) {
					int id1 = rs.getInt(1);
					String name =rs.getString(2);
					String email =rs.getString(3);
					String phone =rs.getString(4);
					String username =rs.getString(5);
					String password =rs.getString(6);
					
					
					financial f = new financial(id1, name, email, phone, username, password );
					fin.add(f);
					
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
	
	return fin;
	
	}
	
	//delete data connection
	
	public static boolean deletefinancial(String id){
		
		int convId = Integer.parseInt(id);
		
		boolean isSuccess = false;
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from financial where id = '"+convId+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	
	
	
	
	
	
	
}
