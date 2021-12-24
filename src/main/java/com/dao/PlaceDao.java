package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.bean.Place;
import com.dao.bean.Student;

public class PlaceDao {
	public static Connection getConnection() {
		Connection con = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/swe306_group","root","LYTDFY");
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
	
	public static Place getRecordById(int placeid) {
		Place pl = null;
		
		try {
			Connection con=getConnection();
			PreparedStatement pst = con.prepareStatement("select * from place where PlaceId=?");
			pst.setInt(1,placeid);
			ResultSet rs = pst.executeQuery();
			pl=new Place();
			while(rs.next()) {
				pl.setPlaceId(rs.getInt("PlaceId"));
				pl.setRentedBy(rs.getInt("RentedBy"));
				pl.setPlaceType(rs.getString("PlaceType"));
				pl.setRentStatus(rs.getString("RentStatus"));
				pl.setStartDate(rs.getString("StartDate"));
				pl.setEndDate(rs.getString("EndDate"));
			}	
		}catch(Exception e) {
			System.out.println(e);
		}return pl;
	}
	public static List<Place> getAllPlaces() {

		List<Place> list = new ArrayList<Place>();

		try {

			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from place");
			ResultSet rs = pst.executeQuery();

			while (rs.next()) {
				Place pla = new Place();
				pla.setPlaceId(rs.getInt("PlaceId"));
				pla.setRentedBy(rs.getInt("RentedBy"));
				pla.setPlaceType(rs.getString("PlaceType"));
				pla.setRentStatus(rs.getString("RentStatus"));
				pla.setStartDate(rs.getString("StartDate"));
				pla.setEndDate(rs.getString("EndDate"));
				
				list.add(pla);
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	public static List<Place> getAllAvailablePlace() {
		
		String status="valid";
		List<Place> list = new ArrayList<Place>();
		try {
			
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from place where RentStatus=?");
			pst.setString(1, status);
			ResultSet rs = pst.executeQuery();
 
			while (rs.next()) {
				Place pla = new Place();
				pla.setPlaceId(rs.getInt("PlaceId"));
				pla.setRentedBy(rs.getInt("RentedBy"));
				pla.setPlaceType(rs.getString("PlaceType"));
				pla.setRentStatus(rs.getString("RentStatus"));
				pla.setStartDate(rs.getString("StartDate"));
				pla.setEndDate(rs.getString("EndDate"));
				
				list.add(pla);
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	public static List<Place> getPlaceByStudent(Student s) {
		List<Place> list = new ArrayList<Place>();
		try {
			
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from place where RentedBy=?");
			pst.setInt(1, s.getStudentId());
			ResultSet rs = pst.executeQuery();

			while (rs.next()) {
				Place pla = new Place();
				pla.setPlaceId(rs.getInt("PlaceId"));
				pla.setRentedBy(rs.getInt("RentedBy"));
				pla.setPlaceType(rs.getString("PlaceType"));
				pla.setRentStatus(rs.getString("RentStatus"));
				pla.setStartDate(rs.getString("StartDate"));
				pla.setEndDate(rs.getString("EndDate"));
				
				list.add(pla);
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
}
