package com.mindtree.daoimpl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;


import com.mindtree.dao.HotelDao;
import com.mindtree.model.Hotel;
import com.mindtree.model.HotelBooking;

@Repository
@Transactional
public class HotelDaoImpl implements HotelDao {
	private static final Logger logger = Logger.getLogger(HotelDaoImpl.class);

	@SuppressWarnings("unchecked")
	public List<String> getCity() {
		return entityManager.createQuery("select distinct city from Hotel").getResultList();
	}

	@SuppressWarnings("unchecked")
	public List<Hotel> getHotelName(String cityName) {
		return entityManager.createQuery("from Hotel h where h.city='" + cityName + "'").getResultList();
	}

	@PersistenceContext
	private EntityManager entityManager;

	public void addHotelBookingInformation(HotelBooking hbooking) {
		entityManager.persist(hbooking);

	}

	public int getBookingRefernce() {

		int bookingRefrence = (Integer) entityManager.createQuery("select max(booking_ref) from HotelBooking")
				.getSingleResult();
logger.info("bookingRefrence is"+ bookingRefrence);
		return bookingRefrence;
	}

	@SuppressWarnings("unchecked")
	public List<Hotel> getNumberOfRooms(HotelBooking hbooking) {
		return entityManager.createQuery("from Hotel h where h.city='" + hbooking.getCity() + "' and h.hotelName='"
				+ hbooking.getHotelName() + "'").getResultList();

	}

	public Long getBookedRooms(HotelBooking hbooking) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date checkin = hbooking.getCheckin();
		Date checkout = hbooking.getCheckOut();
		long sum = 0;
		try {
			sum = (Long) entityManager.createQuery(
					"select sum(number_of_rooms)from HotelBooking h where h.checkin<'" + sdf.format(checkout)
							+ " 00:00:00' and h.checkOut>'" + sdf.format(checkin) + " 00:00:00' and h.hotelName='"
							+ hbooking.getHotelName() + "' and h.city='" + hbooking.getCity() + "'")
					.getSingleResult();

			String b = Long.toString(sum);

			if (b.equals(null) || b.equals("") || b == null) {

				sum = (long) 0;

			}

		} catch (Exception e) {
			sum = (long) 0;
		}
		return sum;

	}

	@SuppressWarnings("unchecked")
	public List<Hotel> getLeastPriceHotel(String cityName) {

		return entityManager.createQuery("from Hotel h where h.city='" + cityName + "' ORDER BY pricePerRoom asc")
				.setMaxResults(5).getResultList();
	}

}
