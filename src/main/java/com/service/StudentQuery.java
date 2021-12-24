package com.service;

import java.util.List;

import com.dao.CourseDao;
import com.dao.bean.Course;
public class StudentQuery {

	public static List<Course> getCourses(int page){
		  int PAGE_SIZE = 8;
		  List<Course> all = CourseDao.getAllRecord();
		  int fromIndex = page * PAGE_SIZE;
		  int toIndex= Math.min(page * PAGE_SIZE + PAGE_SIZE, all.size());
		  List<Course> sublist = all.subList(fromIndex, toIndex);
		  return sublist;
		 }
		 public static int getCoursePagenum() {
		  int PAGE_SIZE = 8;
		  List<Course> all = CourseDao.getAllRecord();
		  int TOTAL_SIZE = all.size();
		  return TOTAL_SIZE/PAGE_SIZE + 1;
		 }
}
