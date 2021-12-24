package com.dao.bean;

public class Course {
	private int courseid;
	private String coursename,coursetime,coach,feedback,attendance,courseinfo,feedbackreply,day,courseicon;
	
	public int getCourseid() {
		return courseid;
	}
	public void setCourseid(int courseid) {
		this.courseid = courseid;
	}
	public String getCoursename() {
		return coursename;
	}
	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}
	public String getCoursetime() {
		return coursetime;
	}
	public void setCoursetime(String coursetime) {
		this.coursetime = coursetime;
	}
	public String getCoach() {
		return coach;
	}
	public void setCoach(String coach) {
		this.coach = coach;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	
	public String getAttendance() {
		return attendance;
	}
	public void setAttendance(String attendance) {
		this.attendance = attendance;
	}
	public String getCourseinfo() {
		return courseinfo;
	}
	public void setCourseinfo(String courseinfo) {
		this.courseinfo = courseinfo;
	}
	public String getFeedbackreply() {
		return feedbackreply;
	}
	public void setFeedbackreply(String feedbackreply) {
		this.feedbackreply = feedbackreply;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getCourseicon() {
		return courseicon;
	}
	public void setCourseicon(String courseicon) {
		this.courseicon = courseicon;
	}
	
	
	
}
