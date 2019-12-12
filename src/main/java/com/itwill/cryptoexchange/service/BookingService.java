package com.itwill.cryptoexchange.service;

import java.util.List;

import com.itwill.cryptoexchange.dto.Booking;

public interface BookingService {

	List<Booking> selectAllByMemberNo(int memberNo) throws Exception;

	List<Booking> selectAllByProductNo(int productNo) throws Exception;

	List<Booking> selectAllByBookingType(int bookingType) throws Exception;
	
	List<Booking> selectAllByMS(int m_no, int b_status) throws Exception;
	
	List<Booking> selectAccHistory(int m_no) throws Exception;

	Booking selectOneByMemberNo(int m_no) throws Exception;

	Booking selectOneByBookingNo(int b_no) throws Exception;

	Booking selectOneByBookingType(int b_type) throws Exception;

	boolean insertBooking(Booking booking) throws Exception;

	boolean updateOrDeleteBooking(Booking booking) throws Exception;
	
	Booking orderCount(Booking booking,int buy, int sell) throws Exception;
	
	
}
