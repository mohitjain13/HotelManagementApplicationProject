package com.mindtree.serviceImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.dao.HotelDao;
import com.mindtree.model.Hotel;
import com.mindtree.model.HotelBooking;
import com.mindtree.service.HotelService;

@Service
@Transactional
public class HotelServiceImpl implements HotelService {
	
	private static final Logger logger = Logger.getLogger(HotelServiceImpl.class);

	public List<Hotel> getRoomInfo(HotelBooking hbooking) {
  logger.info("Inside getRoomInfo method"); 
		List<Hotel> hotel = hotelDao.getNumberOfRooms(hbooking);
		logger.info("Total rooms in this hotel are" +hotel.get(0).getTotalRooms());
		Long rooms = hotelDao.getBookedRooms(hbooking);
		logger.info("Already booked roooms "+rooms);
		if ((((hotel.get(0).getTotalRooms()) - rooms) >= 0) && !(rooms.equals(null))) {
			int remaining_rooms = (int) ((hotel.get(0).getTotalRooms()) - rooms);

			hotel.get(0).setRemainingRooms(remaining_rooms);
		} else {

			hotel.get(0).setRemainingRooms(0);

		}

		return hotel;

	}

	@Autowired
	private HotelDao hotelDao;

	@Override
	public List<String> getCity() {
		return hotelDao.getCity();
	}

	@Override
	public List<Hotel> getHotelName(String cityName) {

		return hotelDao.getHotelName(cityName);
	}

	@Override
	public void addHotelBookingInformation(HotelBooking hbooking) {
		hotelDao.addHotelBookingInformation(hbooking);

	}

	@Override
	public int getBookingRefernce() {

		return hotelDao.getBookingRefernce();
	}

	@Override
	public List<Hotel> getLeastPriceHotel(String cityName) {

		return hotelDao.getLeastPriceHotel(cityName);
	}

}
