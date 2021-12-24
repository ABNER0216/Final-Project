package com.dao.bean;

public class Equipment {
	private int EquipId, BorrowedBy;
	private String EquipmentType, BorrowStatus, BorrowDate, ReturnDate;
	public int getEquipId() {
		return EquipId;
	}
	public void setEquipId(int equipId) {
		EquipId = equipId;
	}
	public int getBorrowedBy() {
		return BorrowedBy;
	}
	public void setBorrowedBy(int borrowedBy) {
		BorrowedBy = borrowedBy;
	}
	public String getEquipmentType() {
		return EquipmentType;
	}
	public void setEquipmentType(String equipmentType) {
		EquipmentType = equipmentType;
	}
	public String getBorrowStatus() {
		return BorrowStatus;
	}
	public void setBorrowStatus(String borrowStatus) {
		BorrowStatus = borrowStatus;
	}
	public String getBorrowDate() {
		return BorrowDate;
	}
	public void setBorrowDate(String borrowDate) {
		BorrowDate = borrowDate;
	}
	public String getReturnDate() {
		return ReturnDate;
	}
	public void setReturnDate(String returnDate) {
		ReturnDate = returnDate;
	}
	
	
}