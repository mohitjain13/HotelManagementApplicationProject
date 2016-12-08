package com.mindtree.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class HotelBooking {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int booking_ref;

	private String city;
	private String hotelName;

	private Date checkin;

	private Date checkOut;

	private int number_of_rooms;

	public int getBooking_ref() {
		return booking_ref;
	}

	public void setBooking_ref(int booking_ref) {
		this.booking_ref = booking_ref;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getHotelName() {
		return hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}

	public Date getCheckin() {
		return checkin;
	}

	public void setCheckin(Date checkin) {
		this.checkin = checkin;
	}

	public Date getCheckOut() {
		return checkOut;
	}

	public void setCheckOut(Date checkOut) {
		this.checkOut = checkOut;
	}

	public int getNumber_of_rooms() {
		return number_of_rooms;
	}

	public void setNumber_of_rooms(int number_of_rooms) {
		this.number_of_rooms = number_of_rooms;
	}

	public HotelBooking(int booking_ref, String city, String hotelName, Date checkin, Date checkOut,
			int number_of_rooms) {
		super();
		this.booking_ref = booking_ref;
		this.city = city;
		this.hotelName = hotelName;
		this.checkin = checkin;
		this.checkOut = checkOut;
		this.number_of_rooms = number_of_rooms;
	}

	public HotelBooking() {
		super();
		// TODO Auto-generated constructor stub
	}

}
