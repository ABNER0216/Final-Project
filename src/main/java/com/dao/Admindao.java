package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.dao.bean.Admin;

public class Admindao {

	public static Connection getConnection() {
		Connection con = null;

		try {

			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/swe306_group","root","LYTDFY");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
public static int get(Admin u) {
		
		int status = 0;
		try {

			String name = u.getName();
			 
			String password = u.getPassword();
	 
			Connection con = getConnection();
			String sql = "select * from admin where name=? and password=?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, name);
			pst.setString(2, password);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				
				status = -1;
			}
			
		

		} catch (Exception e) {
			System.out.println(e);
		}
		;
		return status;

	}

}
