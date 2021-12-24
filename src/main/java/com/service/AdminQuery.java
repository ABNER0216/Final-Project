package com.service;

import java.util.List;

import com.dao.StudentDao;
import com.dao.bean.Student;

public class AdminQuery {
 public static List<Student> getStudents(int page){
  int PAGE_SIZE = 8;
  List<Student> all = StudentDao.getAllRecords();
  int fromIndex = page * PAGE_SIZE;
  int toIndex= Math.min(page * PAGE_SIZE + PAGE_SIZE, all.size());
  List<Student> sublist = all.subList(fromIndex, toIndex);
  return sublist;
 }
 public static int getStudentPagenum() {
  int PAGE_SIZE = 8;
  List<Student> all = StudentDao.getAllRecords();
  int TOTAL_SIZE = all.size();
  return TOTAL_SIZE/PAGE_SIZE + 1;
 }
}