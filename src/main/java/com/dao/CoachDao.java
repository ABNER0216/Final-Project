package com.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.dao.bean.Coach;

public class CoachDao {
	public static Connection getConnection(){
		Connection con=null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/swe306_group","root","LYTDFY");
		}catch(Exception e) {
			System.out.println(e);
		}
		return con;
	}

	public static int getLogin(Coach c){
		int status=0;
		
		try {
			Connection con=getConnection();
			PreparedStatement pst = con.prepareStatement("select * from coach where email=? and password=?");
			pst.setString(1,c.getEmail());
			pst.setString(2,c.getPassword());
			ResultSet rs = pst.executeQuery();
			
			if(rs.next()) {
			status=1;		
			}else {
			status=-1;
			}
			
		}catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public static List<Coach> getAllRecord(){
		
		List<Coach> list = new ArrayList<Coach>();
		
		try {
			Connection con=getConnection();
			PreparedStatement pst = con.prepareStatement("select * from coach");
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()) {
				Coach c = new Coach();
				c.setCoachid(rs.getInt("coachid"));
				c.setEmail(rs.getString("email"));
				c.setPassword(rs.getString("password"));
				c.setName(rs.getString("name"));
				c.setCoachinfo(rs.getString("coachinfo"));
				c.setCoachage(rs.getInt("coachage"));
				c.setCoachgender(rs.getString("coachgender"));
			list.add(c);		
			}
			
		}catch(Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	public static Coach getRecordById(int coachid) {
		Coach c =null;
		
		try {
			Connection con=getConnection();
			PreparedStatement pst = con.prepareStatement("select * from coach where coachid=?");
			pst.setInt(1,coachid);
			ResultSet rs = pst.executeQuery();
			c= new Coach();
			while(rs.next()) {
				c.setCoachid(rs.getInt("coachid"));
				c.setEmail(rs.getString("email"));
				c.setPassword(rs.getString("password"));
				c.setName(rs.getString("name"));
				c.setCoachinfo(rs.getString("coachinfo"));
				c.setCoachage(rs.getInt("coachage"));
				c.setCoachgender(rs.getString("coachgender"));
				c.setPhoto(rs.getString("photo"));
			}	
		}catch(Exception e) {
			System.out.println(e);
		}return c;
}
	
	public static int getTheCoachId(String email) {
		Coach c =null;
		try {
			Connection con=getConnection();
			PreparedStatement pst = con.prepareStatement("select coachid from coach where email=?");
			pst.setString(1,email);
			ResultSet rs = pst.executeQuery();
			c= new Coach();
			while(rs.next()) {
			c.setCoachid(rs.getInt("coachid"));	
			}
		}catch(Exception e) {
			System.out.println(e);
		}return c.getCoachid();
}
	
	public static String getTheCoach(int coachid) {
		Coach c =null;
		try {
			Connection con=getConnection();
			PreparedStatement pst = con.prepareStatement("select name from coach where coachid=?");
			pst.setInt(1,coachid);
			ResultSet rs = pst.executeQuery();
			c= new Coach();
			while(rs.next()) {
			c.setName(rs.getString("name"));	
			}
		}catch(Exception e) {
			System.out.println(e);
		}return c.getName();
}
	
	public static int getTheIdByName(String name) {
		Coach c =null;
		try {
			Connection con=getConnection();
			PreparedStatement pst = con.prepareStatement("select coachid from coach where name=?");
			pst.setString(1,name);
			ResultSet rs = pst.executeQuery();
			c= new Coach();
			while(rs.next()) {
			c.setCoachid(rs.getInt("Coachid"));	
			}
		}catch(Exception e) {
			System.out.println(e);
		}return c.getCoachid();
}
	public static int EditPersonalInformation(Coach o) {
		int status=0;
		try {
			Connection con=getConnection();
			PreparedStatement pst=con.prepareStatement("update coach set email=?,name=?,password=?,coachinfo=?,coachage=?,coachgender=? where coachid=?");
			pst.setString(1,o.getEmail());
			pst.setString(2,o.getName());
			pst.setString(3,o.getPassword());
			pst.setString(4,o.getCoachinfo());
			pst.setInt(5,o.getCoachage());
			pst.setString(6,o.getCoachgender());
			pst.setInt(7,o.getCoachid());
			
			status=pst.executeUpdate();
			
		}catch(Exception e) {
			System.out.println(e);
		}return status;
	}
	
}
