package com.mindtree.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Hotel")
public class Hotel {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int hotelId;
	private String hotelName;

	private String city;
	private int totalRooms;
	private int pricePerRoom;

	private int remainingRooms;

	public int getHotelId() {
		return hotelId;
	}

	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}

	public String getHotelName() {
		return hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public int getTotalRooms() {
		return totalRooms;
	}

	public void setTotalRooms(int totalRooms) {
		this.totalRooms = totalRooms;
	}

	public int getPricePerRoom() {
		return pricePerRoom;
	}

	public void setPricePerRoom(int pricePerRoom) {
		this.pricePerRoom = pricePerRoom;
	}

	public int getRemainingRooms() {
		return remainingRooms;
	}

	public void setRemainingRooms(int remainingRooms) {
		this.remainingRooms = remainingRooms;
	}

	public Hotel(int hOTEL_ID, String hOTEL_NAME, String cITY, int rOOMS_AVA, int pRICE_PER_ROOM) {
		super();
		this.hotelId = hOTEL_ID;
		this.hotelName = hOTEL_NAME;
		this.city = cITY;
		this.totalRooms = rOOMS_AVA;
		this.pricePerRoom = pRICE_PER_ROOM;
	}

	public Hotel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Hotel(int hOTEL_ID) {
		this.hotelId = hOTEL_ID;
	}

	public Hotel(int hotelId2, String hotelName2, String city2, int totalRooms2, int pricePerRoom2,
			int remainingRooms2) {
		this.hotelId = hotelId2;
		this.hotelName = hotelName2;
		this.city = city2;
		this.totalRooms = totalRooms2;
		this.pricePerRoom = pricePerRoom2;
		this.remainingRooms = remainingRooms2;
	}

}
