package com.dao.bean;

public class Place {
	private int PlaceId, RentedBy;
	private String PlaceType, RentStatus, StartDate, EndDate;
	public int getPlaceId() {
		return PlaceId;
	}
	public void setPlaceId(int placeId) {
		PlaceId = placeId;
	}
	public int getRentedBy() {
		return RentedBy;
	}
	public void setRentedBy(int rentedBy) {
		RentedBy = rentedBy;
	}
	public String getPlaceType() {
		return PlaceType;
	}
	public void setPlaceType(String placeType) {
		PlaceType = placeType;
	}
	public String getRentStatus() {
		return RentStatus;
	}
	public void setRentStatus(String rentStatus) {
		RentStatus = rentStatus;
	}
	public String getStartDate() {
		return StartDate;
	}
	public void setStartDate(String startDate) {
		StartDate = startDate;
	}
	public String getEndDate() {
		return EndDate;
	}
	public void setEndDate(String endDate) {
		EndDate = endDate;
	}
	
}
