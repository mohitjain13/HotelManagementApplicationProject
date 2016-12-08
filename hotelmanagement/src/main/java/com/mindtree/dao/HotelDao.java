package com.mindtree.dao;

import java.util.List;

import com.mindtree.model.Hotel;
import com.mindtree.model.HotelBooking;

public interface HotelDao {

	public List<String> getCity();

	public List<Hotel> getHotelName(String cityName);

	public void addHotelBookingInformation(HotelBooking hbooking);

	public int getBookingRefernce();

	public List<Hotel> getNumberOfRooms(HotelBooking hbooking);

	public Long getBookedRooms(HotelBooking hbooking);

	public List<Hotel> getLeastPriceHotel(String cityName);
}