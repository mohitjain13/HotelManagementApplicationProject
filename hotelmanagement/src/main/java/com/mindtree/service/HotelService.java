package com.mindtree.service;

import java.util.List;

import com.mindtree.model.Hotel;
import com.mindtree.model.HotelBooking;

public interface HotelService {

	public List<Hotel> getRoomInfo(HotelBooking hbooking);

	public List<String> getCity();

	public List<Hotel> getHotelName(String cityName);

	public void addHotelBookingInformation(HotelBooking hbooking);

	public int getBookingRefernce();

	public List<Hotel> getLeastPriceHotel(String cityName);

}
