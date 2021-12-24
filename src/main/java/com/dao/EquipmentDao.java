package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.bean.Equipment;
import com.dao.bean.Student;

public class EquipmentDao {
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
	
	public static Equipment getRecordById(int equipmentid) {
		Equipment eq = null;
		
		try {
			Connection con=getConnection();
			PreparedStatement pst = con.prepareStatement("select * from equipment where EquipmentId=?");
			pst.setInt(1,equipmentid);
			ResultSet rs = pst.executeQuery();
			eq=new Equipment();
			while(rs.next()) {
				eq.setEquipId(rs.getInt("EquipmentId"));
				eq.setBorrowedBy(rs.getInt("BorrowedBy"));
				eq.setEquipmentType(rs.getString("EquipmentType"));
				eq.setBorrowStatus(rs.getString("BorrowStatus")); 
				eq.setBorrowDate(rs.getString("BorrowDate"));
				eq.setReturnDate(rs.getString("ReturnDate"));
			}	
		}catch(Exception e) {
			System.out.println(e);
		}return eq;
	}
	public static List<Equipment> getAllEquipments() {

		List<Equipment> list = new ArrayList<Equipment>();

		try {

			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from equipment");
			ResultSet rs = pst.executeQuery();

			while (rs.next()) {
				Equipment equip = new Equipment();
				equip.setEquipId(rs.getInt("EquipmentId"));
				equip.setBorrowedBy(rs.getInt("BorrowedBy"));
				equip.setEquipmentType(rs.getString("EquipmentType"));
				equip.setBorrowStatus(rs.getString("BorrowStatus"));
				equip.setBorrowDate(rs.getString("BorrowDate"));
				equip.setReturnDate(rs.getString("ReturnDate"));
				list.add(equip);
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	public static List<Equipment> getAllAvailableEquipment() {
		
		String status="valid";
		List<Equipment> list = new ArrayList<Equipment>();
		try {
			
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from equipment where BorrowStatus=?");
			pst.setString(1, status);
			ResultSet rs = pst.executeQuery();

			while (rs.next()) {
				Equipment equip = new Equipment();
				equip.setEquipId(rs.getInt("EquipmentId"));
				equip.setBorrowedBy(rs.getInt("BorrowedBy"));
				equip.setEquipmentType(rs.getString("EquipmentType"));
				equip.setBorrowStatus(rs.getString("BorrowStatus"));
				equip.setBorrowDate(rs.getString("BorrowDate"));
				equip.setReturnDate(rs.getString("ReturnDate"));
				list.add(equip);

			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	public static List<Equipment> getEquipmentByStudent(Student s) {
			
			List<Equipment> list = new ArrayList<Equipment>();
			try {
				
				Connection con = getConnection();
				PreparedStatement pst = con.prepareStatement("select * from equipment where BorrowedBy=?");
				pst.setInt(1, s.getStudentId());
				ResultSet rs = pst.executeQuery();

				while (rs.next()) {
					Equipment equip = new Equipment();
					equip.setEquipId(rs.getInt("EquipmentId"));
					equip.setBorrowedBy(rs.getInt("BorrowedBy"));
					equip.setEquipmentType(rs.getString("EquipmentType"));
					equip.setBorrowStatus(rs.getString("BorrowStatus"));
					equip.setBorrowDate(rs.getString("BorrowDate"));
					equip.setReturnDate(rs.getString("ReturnDate"));
					list.add(equip);

				}

			} catch (Exception e) {
				System.out.println(e);
			}
			return list;
	}
	
	public static List<Equipment> getEquipmentTypeValid(String type){
		List<Equipment> list = new ArrayList<Equipment>();
		String BorrowStatus = "valid";
		try {
			
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from equipment where EquipmentType=? and BorrowStatus=?");
			pst.setString(1, type);
			pst.setString(2, BorrowStatus);
			ResultSet rs = pst.executeQuery();

			while (rs.next()) {
				Equipment equip = new Equipment();
				equip.setEquipId(rs.getInt("EquipmentId"));
				equip.setBorrowedBy(rs.getInt("BorrowedBy"));
				equip.setEquipmentType(rs.getString("EquipmentType"));
				equip.setBorrowStatus(rs.getString("BorrowStatus"));
				equip.setBorrowDate(rs.getString("BorrowDate"));
				equip.setReturnDate(rs.getString("ReturnDate"));
				list.add(equip);

			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	
}

