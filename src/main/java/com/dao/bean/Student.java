package com.dao.bean;

public class Student {
	private int StudentId, courseid1,courseid2,courseid3;
	private String StudentName, password, StudentDepartment, email, courseid;
	
	
	public String getCourseid() {
		return courseid;
	}
	public void setCourseid(String courseid) {
		this.courseid = courseid;
	}
	public int getCourseid1() {
		return courseid1;
	}
	public void setCourseid1(int courseid1) {
		this.courseid1 = courseid1;
	}
	public int getCourseid2() {
		return courseid2;
	}
	public void setCourseid2(int courseid2) {
		this.courseid2 = courseid2;
	}
	public int getCourseid3() {
		return courseid3;
	}
	public void setCourseid3(int courseid3) {
		this.courseid3 = courseid3;
	}
	public int getStudentId() {
		return StudentId;
	}
	public void setStudentId(int studentId) {
		this.StudentId = studentId;
	}
	public String getStudentName() {
		return StudentName;
	}
	public void setStudentName(String studentName) {
		this.StudentName = studentName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getStudentDepartment() {
		return StudentDepartment;
	}
	public void setStudentDepartment(String studentDepartment) {
		this.StudentDepartment = studentDepartment;
	}
}

