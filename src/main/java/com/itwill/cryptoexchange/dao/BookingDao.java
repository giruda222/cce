package com.itwill.cryptoexchange.dao;

import java.util.List;

import com.itwill.cryptoexchange.dto.Booking;

public interface BookingDao {

	/*
	 * READ ALL
	 */

	List<Booking> selectAllByMemberNo(int m_no) throws Exception;

	List<Booking> selectAllByProductNo(int p_no) throws Exception;

	List<Booking> selectAllByBookingType(int b_type) throws Exception;
	
	List<Booking> selectAllByMS(int m_no, int b_status) throws Exception;

	List<Booking> selectAccHistory(int m_no) throws Exception;
	
	//Read One 
	Booking selectOneByMemberNo(int m_no) throws Exception;
	Booking selectOneByBookingNo(int b_no) throws Exception;
	Booking selectOneByBookingType(int b_type)throws Exception;
			
	/*
	 * CREATE
	 */
	boolean insertBooking(Booking booking) throws Exception;

	/*
	 * DELETE
	 */
	boolean deleteBooking(int bookingNo) throws Exception;

	/*
	 * UPDATE
	 */
	boolean updateBooking(Booking booking) throws Exception;
}
