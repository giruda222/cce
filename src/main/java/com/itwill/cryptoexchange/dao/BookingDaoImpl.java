package com.itwill.cryptoexchange.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.cryptoexchange.dto.Booking;

@Repository
public class BookingDaoImpl implements BookingDao {

	@Autowired
	private SessionFactory session;
	
	@Override
	public List<Booking> selectAllByMS(int m_no, int b_status) throws Exception {
		List<Booking> bookingList;

		bookingList = session.getCurrentSession().createQuery("from Booking where m_no=" + m_no + "and b_status=" + b_status, Booking.class)
				.getResultList();

		return bookingList;
	}
	
	@Override
	public List<Booking> selectAccHistory(int m_no) throws Exception {
		List<Booking> bookingList;

		bookingList = session.getCurrentSession().createQuery("from Booking where m_no=" + m_no + "and b_status=5 or b_status=6", Booking.class)
				.getResultList();

		return bookingList;
	}
	
	@Override
	public List<Booking> selectAllByMemberNo(int m_no) throws Exception {
		List<Booking> bookingList;

		bookingList = session.getCurrentSession().createQuery("from Booking where m_no=" + m_no, Booking.class)
				.getResultList();

		return bookingList;
	}

	@Override
	public List<Booking> selectAllByProductNo(int p_no) throws Exception {
		List<Booking> bookingList;

		bookingList = session.getCurrentSession().createQuery("from Booking where p_no=" + p_no, Booking.class)
				.getResultList();

		return bookingList;
	}

	@Override
	public List<Booking> selectAllByBookingType(int b_type) throws Exception {
		List<Booking> bookingList;

		bookingList = session.getCurrentSession().createQuery("from Booking where b_type=" + b_type, Booking.class)
				.getResultList();
		return bookingList;
	}

	@Override
	public Booking selectOneByMemberNo(int m_no) throws Exception {
		Booking booking;

		booking = session.getCurrentSession().get(Booking.class, m_no);
		return booking;
	}

	@Override
	public Booking selectOneByBookingNo(int b_no) throws Exception {
		Booking booking;
		booking = session.getCurrentSession().get(Booking.class, b_no);
		return booking;
	}

	@Override
	public Booking selectOneByBookingType(int b_type) throws Exception {
		Booking booking;
		booking = session.getCurrentSession().get(Booking.class, b_type);
		return booking;
	}

	@Override
	public boolean insertBooking(Booking booking) throws Exception {
		boolean issuccess = false;

		Integer i = (Integer) session.getCurrentSession().save(booking);

		if (i == 1) {
			issuccess = true;
		}

		return issuccess;
	}

	@Override
	public boolean deleteBooking(int b_no) throws Exception {
		boolean issuccess = false;

		Booking booking = session.getCurrentSession().get(Booking.class, b_no);
		session.getCurrentSession().delete(booking);
		issuccess = true;

		return issuccess;
	}

	@Override
	public boolean updateBooking(Booking booking) throws Exception {
		boolean issuccess = false;

		session.getCurrentSession().merge(booking);
		issuccess = true;

		return issuccess;
	}

}
