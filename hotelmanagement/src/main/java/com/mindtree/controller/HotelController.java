package com.mindtree.controller;

import java.util.ArrayList;

import java.util.List;

import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mindtree.model.Hotel;
import com.mindtree.model.HotelBooking;
import com.mindtree.service.HotelService;

@Controller
public class HotelController {
	
	private static final Logger logger = Logger.getLogger(HotelController.class);

	@RequestMapping(value = "/roomBooking", method = RequestMethod.GET)
	public ModelAndView viewHomePage() {
		ModelAndView modelAndView = new ModelAndView("viewhotel");
		logger.info("returning to viewHotel.jsp page");
		return modelAndView;
	}

	@ModelAttribute
	public void addingCity(Model modelAndView) {
		logger.info("Inside addingCity Method");
		List<String> city = hotelService.getCity();
		modelAndView.addAttribute("list", city);
	}

	@RequestMapping(value = "/loadHotel", headers = "Accept=*/*", method = RequestMethod.GET)
	@ResponseBody
	public List<String> loadHotels(@RequestParam(value = "cityname", required = true) String cityName)
			throws IllegalStateException {
      logger.info("Selected City is "+cityName);
		List<Hotel> list = hotelService.getHotelName(cityName);
		List<String> hotel = new ArrayList<String>();
		for (Hotel hname : list) {
			hotel.add(hname.getHotelName());
		}
		logger.info("Returning Hotel"+hotel);
		return hotel;
	}

	@RequestMapping(value = "/submitHotel", method = RequestMethod.POST)
	public ModelAndView submitHotel(@Valid @ModelAttribute("hotelBooking") HotelBooking hbooking,
			BindingResult result) {
		if (result.hasErrors()) {
			ModelAndView modelAndView = new ModelAndView("viewhotel");

			return modelAndView;

		}
		try {
			List<Hotel> hotelInfo = hotelService.getRoomInfo(hbooking);

			if (hbooking.getNumber_of_rooms() > hotelInfo.get(0).getRemainingRooms()) {

				String error = "Sorry," + hotelInfo.get(0).getRemainingRooms() + "Rooms are Available only";
				ModelAndView modelAndView = new ModelAndView("viewhotel");
				modelAndView.addObject("error", error);
				return modelAndView;
			} else {
				ModelAndView modelAndView = new ModelAndView("success");
				hotelService.addHotelBookingInformation(hbooking);
				int bookingRefrence = hotelService.getBookingRefernce();
				int amount = (hotelInfo.get(0).getPricePerRoom()) * hbooking.getNumber_of_rooms();

				modelAndView.addObject("RefernceNumber", bookingRefrence);
				modelAndView.addObject("amount", amount);

				return modelAndView;
			}

		} catch (Exception e) {

		}
		return null;
	}

	@RequestMapping(value = "/viewLowestPriceHotel", method = RequestMethod.GET)
	public ModelAndView leastPriceHotel() {
		ModelAndView modelAndView = new ModelAndView("lowpricehotel");
		return modelAndView;
	}

	@RequestMapping(value = "/loadLeastPriceHotel", headers = "Accept=*/*", method = RequestMethod.GET)
	@ResponseBody
	public List<Hotel> loadLeastPriceHotelInfo(@RequestParam(value = "cityname", required = true) String cityName)
			throws IllegalStateException {

		List<Hotel> list = hotelService.getLeastPriceHotel(cityName);
		List<Hotel> hotelInfo = new ArrayList<Hotel>();
logger.info(list+"are low price hotel");
		
		for (Hotel c : list) {
			Hotel hotel = new Hotel(c.getHotelId(), c.getHotelName(), c.getCity(), c.getTotalRooms(),
					c.getPricePerRoom(), c.getRemainingRooms());
			hotelInfo.add(hotel);

		}
		return hotelInfo;

	}

	@Autowired
	private HotelService hotelService;

}
