package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.bean.Course;
import com.dao.bean.Equipment;
import com.dao.bean.Place;
import com.dao.bean.Student;

public class StudentDao {
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
	
	public static Student getRecordById(int studentid) {
		Student s =null;
		
		try {
			Connection con=getConnection();
			PreparedStatement pst = con.prepareStatement("select * from student where studentid=?");
			pst.setInt(1,studentid);
			ResultSet rs = pst.executeQuery();
			s=new Student();
			while(rs.next()) {
				s.setStudentId(rs.getInt("studentid"));
				s.setStudentName(rs.getString("studentname"));
				s.setPassword(rs.getString("studentpassword"));
				s.setStudentDepartment(rs.getString("studentdepartment"));
				s.setEmail(rs.getString("studentemail"));
				s.setCourseid(rs.getString("courseid"));
				s.setCourseid1(rs.getInt("courseid1"));
				s.setCourseid2(rs.getInt("courseid2"));
				s.setCourseid3(rs.getInt("courseid3"));
			}	
		}catch(Exception e) {
			System.out.println(e);
		}return s;
	}
	
	public static int get(Student s) {
		
		int status = 0;
		try {

			String studentemail = s.getEmail();
			 
			String studentpassword = s.getPassword();
	 
			Connection con = getConnection();
			String sql = "select * from student where studentemail=? and studentpassword=?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, studentemail);
			pst.setString(2, studentpassword);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				status = -1;
			}
			else {
				status = 0;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public static int getStudentIdByEmail(String email) {
		Student s = null;

		try {

			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select studentid from student where studentemail=?");
			pst.setString(1, email);
			ResultSet rs = pst.executeQuery();
			s = new Student();
			while(rs.next()){
				s.setStudentId(rs.getInt("studentid"));
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return s.getStudentId();
	}
	
	public static int borrowEquipment(Equipment eq, Student s, String BorrowDate, String ReturnDate) {
		int status = 0;
		String BorrowStatus = "invalid";
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("update equipment set BorrowedBy=?, BorrowStatus=?, BorrowDate=?,ReturnDate=? where EquipmentId=?");
			
			pst.setInt(1,  s.getStudentId());
			pst.setString(2, BorrowStatus);
			pst.setString(3, BorrowDate);
			pst.setString(4, ReturnDate);
			pst.setInt(5, eq.getEquipId());
			status = pst.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public static int returnEquipment(Equipment eq) {
		int status = 0;
		int BorrowedBy = 0;
		String BorrowStatus = "valid";
		String BorrowDate="00000000";
		String ReturnDate="00000000";
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("update equipment set BorrowedBy=?, BorrowStatus=?, BorrowDate=?,ReturnDate=? where EquipmentId=?");
			
			pst.setInt(1,  BorrowedBy);
			pst.setString(2, BorrowStatus);
			pst.setString(3, BorrowDate);
			pst.setString(4, ReturnDate);
			pst.setInt(5, eq.getEquipId());
			status = pst.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public static int appointPlace(Place pl, Student s, String startdate, String enddate) {
		int status = 0;
		String BorrowStatus = "invalid";
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("update place set RentedBy=?,RentStatus=?,StartDate=?,EndDate=? where PlaceId=?");
			
			pst.setInt(1,  s.getStudentId());
			pst.setString(2, BorrowStatus);
			pst.setString(3, startdate);
			pst.setString(4, enddate);
			pst.setInt(5, pl.getPlaceId());
			status = pst.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public static int cancelAppointment(Place pl) {
		int status = 0;
		int RentedBy=0;
		String RentStatus="valid";
		String StartDate="00000000";
		String EndDate="000000000";
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("update place set RentedBy=?,RentStatus=?,StartDate=?,EndDate=? where PlaceId=?");
			pst.setInt(1, RentedBy);
			pst.setString(2, RentStatus);
			pst.setString(3, StartDate);
			pst.setString(4, EndDate);
			pst.setInt(5, pl.getPlaceId());
			status = pst.executeUpdate();
			
		} catch(Exception e) {
			System.out.println(e);
		}
		return status;
		
	}
	public static int save(Student s) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement(
					"insert into student (studentid,studentname,studentpassword,studentdepartment,studentemail) values (?,?,?,?,?)");

			pst.setInt(1, s.getStudentId());
			pst.setString(2, s.getStudentName());
			pst.setString(3, s.getPassword());
			pst.setString(4, s.getStudentDepartment());
			pst.setString(5, s.getEmail());
			
			status = pst.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;

	}
	public static int update(Student s) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("update student set studentname=?,studentpassword=?,studentdepartment=?,studentemail=? where studentid=?");
			pst.setString(1, s.getStudentName());
			System.out.println(s.getStudentName());
			pst.setString(2, s.getPassword());
			pst.setString(3, s.getStudentDepartment());
			pst.setString(4, s.getEmail());
			pst.setInt(5, s.getStudentId());
			status = pst.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;

	}
	
	public static int updateStudent(Student s, String name, String password, String department, String email) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("update student set studentname=?,studentpassword=?,studentdepartment=?,studentemail=? where studentid=?");
			pst.setString(1, name);
			pst.setString(2, password);
			pst.setString(3, department);
			pst.setString(4, email);
			pst.setInt(5, s.getStudentId());
			status = pst.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	public static int delete(Student s) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("delete from student where studentid=?");

			pst.setInt(1, s.getStudentId());
			status = pst.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	public static List<Student> getAllRecords() {

		List<Student> list = new ArrayList<Student>();

		try {

			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from student");
			ResultSet rs = pst.executeQuery();

			while (rs.next()) {
				Student s = new Student();
				s.setStudentId(rs.getInt("studentid"));
				s.setStudentName(rs.getString("studentname"));
				s.setPassword(rs.getString("studentpassword"));
				s.setStudentDepartment(rs.getString("studentdepartment"));
				s.setEmail(rs.getString("studentemail"));
				
				list.add(s);
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	public static Student getRecordByName(String studentname) {
		Student s = null;

		try {

			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from student where studentname=?");
			pst.setString(1, studentname);
			ResultSet rs = pst.executeQuery();
			s = new Student();

			while (rs.next()) {

				s.setStudentId(rs.getInt("studentid"));
				s.setStudentName(rs.getString("studentname"));
				s.setPassword(rs.getString("studentpassword"));
				s.setStudentDepartment(rs.getString("studentdepartment"));
				s.setEmail(rs.getString("studentemail"));
			
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return s;
	}
	
	public static Student getMyCourse(int studentid) {
		Student s = null;

		try {
			Connection con=getConnection();
			PreparedStatement pst = con.prepareStatement("select * from student where studentid=?");
			pst.setInt(1,studentid);
			ResultSet rs = pst.executeQuery();
			s = new Student();
			while(rs.next()) {
				s.setCourseid1(rs.getInt("courseid1"));
				s.setCourseid2(rs.getInt("courseid2"));
				s.setCourseid3(rs.getInt("courseid3"));		
			}
		}catch(Exception e) {
			System.out.println(e);
		}
		return s;
	}
	
	public static int DeleteCourseid1(int studentid) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("update student set courseid1=null where studentid=?");

			pst.setInt(1, studentid);
			status = pst.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public static int DeleteCourseid2(int studentid) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("update student set courseid2=null where studentid=?");

			pst.setInt(1, studentid);
			status = pst.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public static int DeleteCourseid3(int studentid) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("update student set courseid3=null where studentid=?");

			pst.setInt(1, studentid);
			status = pst.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	

	
	public static int AddNewCourse1(int studentid,int courseid) {
	int status = 0;
	try {
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement("update student set courseid1=? where studentid=?");
		pst.setInt(1, courseid);
		pst.setInt(2, studentid);
		status = pst.executeUpdate();

	} catch (Exception e) {
		System.out.println(e);
	}
	return status;
	}
	
	public static int AddNewCourse2(int studentid,int courseid) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("update student set courseid2=? where studentid=?");
			pst.setInt(1, courseid);
			pst.setInt(2, studentid);
			status = pst.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
		}
	
	public static int AddNewCourse3(int studentid,int courseid) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("update student set courseid3=? where studentid=?");
			pst.setInt(1, courseid);
			pst.setInt(2, studentid);
			status = pst.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
		}
	
	public static int AddHistoryCourse(int studentid, int courseid) {
		int status = 0;
		String newhistory;
		Student s=getRecordById(studentid);
		try {
			Connection con = getConnection();
			String strCourseid = String.valueOf(courseid);
			String HistoryCourseid = s.getCourseid();
			if(HistoryCourseid!=null && HistoryCourseid!="" && HistoryCourseid!=" "&&  HistoryCourseid!=""
					+ "") {
			newhistory = HistoryCourseid + "," + strCourseid;
			}
			else {
				newhistory = strCourseid;
			}
			PreparedStatement pst = con.prepareStatement("update student set courseid=? where studentid=?");
			pst.setString(1, newhistory);
			pst.setInt(2, studentid);
			status = pst.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
		}
	
}