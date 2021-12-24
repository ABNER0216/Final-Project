package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.dao.bean.Course;
import com.dao.bean.Student;


public class CourseDao {
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

	public static List<Course> getAllRecord(){
		
		List<Course> list = new ArrayList<Course>();
		
		try {
			Connection con=getConnection();
			PreparedStatement pst = con.prepareStatement("select * from course");
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()) {
				Course c = new Course();
				c.setCourseid(rs.getInt("courseid"));
				c.setCoursename(rs.getString("coursename"));
				c.setCoursetime(rs.getString("coursetime"));
				c.setCoach(rs.getString("coach"));
				c.setFeedback(rs.getString("feedback"));
				c.setAttendance(rs.getString("attendance"));
				c.setCourseinfo(rs.getString("courseinfo"));
				c.setFeedbackreply(rs.getString("feedbackreply"));
				c.setDay(rs.getString("day"));
				c.setCourseicon(rs.getString("courseicon"));
			list.add(c);		
			}
			
		}catch(Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	public static int getTheCourseId(String coach) {
		Course c =null;
		try {
			Connection con=getConnection();
			PreparedStatement pst = con.prepareStatement("select courseid from course where coach=?");
			pst.setString(1,coach);
			ResultSet rs = pst.executeQuery();
			c= new Course();
			while(rs.next()) {
			c.setCourseid(rs.getInt("courseid"));	
			}
		}catch(Exception e) {
			System.out.println(e);
		}return c.getCourseid();
}
	
	public static Course getRecordById(int courseid) {
		Course o =null;
		
		try {
			Connection con=getConnection();
			PreparedStatement pst = con.prepareStatement("select * from course where courseid=?");
			pst.setInt(1,courseid);
			ResultSet rs = pst.executeQuery();
			o= new Course();
			while(rs.next()) {
				o.setCourseid(rs.getInt("courseid"));
				o.setCoursename(rs.getString("coursename"));
				o.setCoursetime(rs.getString("coursetime"));
				o.setCoach(rs.getString("coach"));
				o.setFeedback(rs.getString("feedback"));
				o.setAttendance(rs.getString("attendance"));
				o.setCourseinfo(rs.getString("courseinfo"));
				o.setFeedbackreply(rs.getString("feedbackreply"));
				o.setDay(rs.getString("day"));
			}	
		}catch(Exception e) {
			System.out.println(e);
		}return o;
}
	
	public static String getTheCoachById(int courseid) {
		Course c =null;
		try {
			Connection con=getConnection();
			PreparedStatement pst = con.prepareStatement("select coach from course where courseid=?");
			pst.setInt(1,courseid);
			ResultSet rs = pst.executeQuery();
			c= new Course();
			while(rs.next()) {
			c.setCoach(rs.getString("coach"));	
			}
		}catch(Exception e) {
			System.out.println(e);
		}return c.getCoach();
}
	
	public static List<Course> getMyCourse(String coach) {
		List<Course> list = new ArrayList<Course>();
		String theAttendance="To be attend";
		try {
			Connection con=getConnection();
			PreparedStatement pst = con.prepareStatement("select * from course where coach=? and attendance=?");
			pst.setString(1,coach);
			pst.setString(2,theAttendance);
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()) {
				Course c = new Course();
				c.setCourseid(rs.getInt("courseid"));
				c.setCoursename(rs.getString("coursename"));
				c.setCoursetime(rs.getString("coursetime"));
				c.setCoach(rs.getString("coach"));
				c.setFeedback(rs.getString("feedback"));
				c.setAttendance(rs.getString("attendance"));
				c.setCourseinfo(rs.getString("courseinfo"));
			list.add(c);		
			}
			
		}catch(Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	public static int AddFeedback(Course o) {
		int status=0;
		try {
			Connection con=getConnection();
			PreparedStatement pst=con.prepareStatement("update course set feedback=? where courseid=?");
			pst.setString(1,o.getFeedback());
			pst.setInt(2,o.getCourseid());
	
			status=pst.executeUpdate();
			
		}catch(Exception e) {
			System.out.println(e);
		}return status;
	}
	
	public static int ChangeAttendance(Course o) {
		int status=0;
		String theAttendance="Attend";
		try {
			Connection con=getConnection();
			PreparedStatement pst=con.prepareStatement("update course set attendance=? where courseid=?");
			pst.setString(1,theAttendance);
			pst.setInt(2,o.getCourseid());
	
			status=pst.executeUpdate();
			
		}catch(Exception e) {
			System.out.println(e);
		}return status;
	}
	
	public static List<Course> getMyHistoryCourse(String coach) {
		List<Course> list = new ArrayList<Course>();
		String theNewAttendance="Attend";
		try {
			Connection con=getConnection();
			PreparedStatement pst = con.prepareStatement("select * from course where coach=? and attendance=?");
			pst.setString(1,coach);
			pst.setString(2,theNewAttendance);
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()) {
				Course c = new Course();
				c.setCourseid(rs.getInt("courseid"));
				c.setCoursename(rs.getString("coursename"));
				c.setCoursetime(rs.getString("coursetime"));
				c.setCoach(rs.getString("coach"));
				c.setFeedback(rs.getString("feedback"));
				c.setAttendance(rs.getString("attendance"));
				c.setCourseinfo(rs.getString("courseinfo"));
			list.add(c);		
			}
			
		}catch(Exception e) {
			System.out.println(e);
		}
		return list;
	}
	public static int updatefeedback(Course c) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("update course set feedbackreply=? where courseid=?");

			
		
			pst.setString(1, c.getFeedbackreply());
			pst.setInt(2, c.getCourseid());
			
			status = pst.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;

	}
	public static int update(Course c) {
		int status = 0;
		
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("update course set coursename=?,Coursetime=?,coach=?,feedback=?,feedbackreply=?,day=? where courseid=?");

			
			pst.setString(1, c.getCoursename());
			pst.setString(2, c.getCoursetime());
			pst.setString(3, c.getCoach());
			pst.setString(4, c.getFeedback());
			pst.setString(5, c.getFeedbackreply());
			pst.setString(6, c.getDay());
			pst.setInt(7, c.getCourseid());
			
			status = pst.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;

	}
	public static int delete(Course c) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("delete from course where courseid=?");

			pst.setInt(1, c.getCourseid());
			status = pst.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	public static Course getRecordByDay(String day) {
		Course c = null;

		try {

			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from course where day=?");
			pst.setString(1, day);
			ResultSet rs = pst.executeQuery();
			c = new Course();

			while (rs.next()) {

				c.setCourseid(rs.getInt("courseid"));
				c.setCoursename(rs.getString("coursename"));
				c.setCoursetime(rs.getString("coursetime"));
				c.setCoach(rs.getString("coach"));
				c.setFeedback(rs.getString("feedback"));
				c.setAttendance(rs.getString("attendance"));
				c.setCourseinfo(rs.getString("courseinfo"));
				c.setFeedbackreply(rs.getString("feedbackreply"));
				c.setDay(rs.getString("day"));
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return c;
	}
	public static int save(Course c) {
		int status = 0;
		String theAttendance="To be attend";
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("insert into course (courseid,coursename,coursetime,coach,feedback,attendance,day,courseinfo) values (?,?,?,?,?,?,?,?)");

			pst.setInt(1, c.getCourseid());
			pst.setString(2, c.getCoursename());
			pst.setString(3, c.getCoursetime());
			pst.setString(4, c.getCoach());
			pst.setString(5,  c.getFeedback());
			pst.setString(6, theAttendance);
			pst.setString(7,  c.getDay());
			pst.setString(8,  c.getCourseinfo());
			
			status = pst.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;

	}
public static List<Course> getAlldayRecord(String day){
		
		List<Course> list = new ArrayList<Course>();
		
		try {
			Connection con=getConnection();
			PreparedStatement pst = con.prepareStatement("select * from course where day =?");
			pst.setString(1, day);
			ResultSet rs = pst.executeQuery();
			
			
			while(rs.next()) {
				Course c = new Course();
				c.setCourseid(rs.getInt("courseid"));
				c.setCoursename(rs.getString("coursename"));
				c.setCoursetime(rs.getString("coursetime"));
				c.setCoach(rs.getString("coach"));
				c.setFeedback(rs.getString("feedback"));
				c.setAttendance(rs.getString("attendance"));
				c.setCourseinfo(rs.getString("courseinfo"));
				c.setFeedbackreply(rs.getString("feedbackreply"));
				c.setDay(rs.getString("day"));
				list.add(c);		
			}
			
		}catch(Exception e) {
			System.out.println(e);
		}
		return list;
	}

public static List<Course> getMyStudentCourse(Student s) {
	List<Course> list = new ArrayList<Course>();
	try {
		Connection con=getConnection();
		PreparedStatement pst = con.prepareStatement("select * from course where courseid=? or courseid=? or courseid=?");
		pst.setInt(1,s.getCourseid1());
		pst.setInt(2,s.getCourseid2());
		pst.setInt(3,s.getCourseid3());
		ResultSet rs = pst.executeQuery();
		
		while(rs.next()) {
			Course c = new Course();
			c.setCourseid(rs.getInt("courseid"));
			c.setCoursename(rs.getString("coursename"));
			c.setCoursetime(rs.getString("coursetime"));
			c.setCoach(rs.getString("coach"));
			c.setFeedback(rs.getString("feedback"));
			c.setCourseinfo(rs.getString("courseinfo"));
		list.add(c);		
		}
		
	}catch(Exception e) {
		System.out.println(e);
	}
	return list;
}

public static List<Course> getMyStudentCourse1(Student s) {
	List<Course> list = new ArrayList<Course>();
	try {
		Connection con=getConnection();
		PreparedStatement pst = con.prepareStatement("select * from course where courseid=?");
		pst.setInt(1,s.getCourseid1());
		ResultSet rs = pst.executeQuery();
		
		while(rs.next()) {
			Course c = new Course();
			c.setCourseid(rs.getInt("courseid"));
			c.setCoursename(rs.getString("coursename"));
			c.setCoursetime(rs.getString("coursetime"));
			c.setCoach(rs.getString("coach"));
			c.setFeedback(rs.getString("feedback"));
			c.setCourseinfo(rs.getString("courseinfo"));
		list.add(c);		
		}
		
	}catch(Exception e) {
		System.out.println(e);
	}
	return list;
}
public static List<Course> getMyStudentCourse2(Student s) {
	List<Course> list = new ArrayList<Course>();
	try {
		Connection con=getConnection();
		PreparedStatement pst = con.prepareStatement("select * from course where courseid=?");
		pst.setInt(1,s.getCourseid2());
		ResultSet rs = pst.executeQuery();
		
		while(rs.next()) {
			Course c = new Course();
			c.setCourseid(rs.getInt("courseid"));
			c.setCoursename(rs.getString("coursename"));
			c.setCoursetime(rs.getString("coursetime"));
			c.setCoach(rs.getString("coach"));
			c.setFeedback(rs.getString("feedback"));
			c.setCourseinfo(rs.getString("courseinfo"));
		list.add(c);		
		}
		
	}catch(Exception e) {
		System.out.println(e);
	}
	return list;
}
public static List<Course> getMyStudentCourse3(Student s) {
	List<Course> list = new ArrayList<Course>();
	try {
		Connection con=getConnection();
		PreparedStatement pst = con.prepareStatement("select * from course where courseid=?");
		pst.setInt(1,s.getCourseid3());
		ResultSet rs = pst.executeQuery();
		
		while(rs.next()) {
			Course c = new Course();
			c.setCourseid(rs.getInt("courseid"));
			c.setCoursename(rs.getString("coursename"));
			c.setCoursetime(rs.getString("coursetime"));
			c.setCoach(rs.getString("coach"));
			c.setFeedback(rs.getString("feedback"));
			c.setCourseinfo(rs.getString("courseinfo"));
		list.add(c);		
		}
		
	}catch(Exception e) {
		System.out.println(e);
	}
	return list;
}
public static List<Course> getStudentCanChoose(Student s) {
	List<Course> list = new ArrayList<Course>();
	String theAttendance="Attend";
	try {
		Connection con=getConnection();
		PreparedStatement pst = con.prepareStatement("select * from course where ifnull(courseid,'')!=? and ifnull(courseid,'')!=? and ifnull(courseid,'')!=? and ifnull(attendance,'')!=?");
		pst.setInt(1,s.getCourseid1());
		pst.setInt(2,s.getCourseid2());
		pst.setInt(3,s.getCourseid3());
		pst.setString(4,theAttendance);
		ResultSet rs = pst.executeQuery();
		
		while(rs.next()) {
			Course c = new Course();
			c.setCourseid(rs.getInt("courseid"));
			c.setCoursename(rs.getString("coursename"));
			c.setCoursetime(rs.getString("coursetime"));
			c.setCoach(rs.getString("coach"));
			c.setFeedback(rs.getString("feedback"));
			c.setCourseinfo(rs.getString("courseinfo"));
		list.add(c);		
		}
		
	}catch(Exception e) {
		System.out.println(e);
	}
	
	return list;
}
public static List<Course> getHistoryCourse(Student s){
	List<Course> list = new ArrayList<Course>();
	String history = s.getCourseid();
	String[] historyid = history.split(",");
	int historycourseid[] = new int[historyid.length];
	for(int i = 0; i<historyid.length;i++) {
		historycourseid[i] = Integer.parseInt(historyid[i]);
	}
	int size = historyid.length;
	try {
		Connection con=getConnection();
		String statement = "select * from course where courseid=? ";
		for(int i = 0; i < size-1; i++) {
			statement += "or courseid=? ";
		}
		PreparedStatement pst = con.prepareStatement(statement);
		for(int i = 0; i < size; i++) {
			pst.setInt(i+1, historycourseid[i]);
		}
		ResultSet rs = pst.executeQuery();
		
		while(rs.next()) {
			Course c = new Course();
			c.setCourseid(rs.getInt("courseid"));
			c.setCoursename(rs.getString("coursename"));
			c.setCoursetime(rs.getString("coursetime"));
			c.setCoach(rs.getString("coach"));
			c.setFeedback(rs.getString("feedback"));
			c.setCourseinfo(rs.getString("courseinfo"));
			list.add(c);		
		}
		
	}catch(Exception e) {
		System.out.println(e);
	}
	return list;
}
public static List<Course> getEmailByName(String coach){
	
	List<Course> list = new ArrayList<Course>();
	
	try {
		Connection con=getConnection();
		PreparedStatement pst = con.prepareStatement("select * from course where coach=?");
		pst.setString(1,coach);
		ResultSet rs = pst.executeQuery();
		
		while(rs.next()) {
			Course c = new Course();
			c.setCourseid(rs.getInt("courseid"));
			c.setCoursename(rs.getString("coursename"));
			c.setCoursetime(rs.getString("coursetime"));
			c.setCoach(rs.getString("coach"));
			c.setFeedback(rs.getString("feedback"));
			c.setAttendance(rs.getString("attendance"));
			c.setCourseinfo(rs.getString("courseinfo"));
			c.setFeedbackreply(rs.getString("feedbackreply"));
			c.setDay(rs.getString("day"));
			c.setCourseicon(rs.getString("courseicon"));
		list.add(c);		
		}
		
	}catch(Exception e) {
		System.out.println(e);
	}
	return list;
}

}
