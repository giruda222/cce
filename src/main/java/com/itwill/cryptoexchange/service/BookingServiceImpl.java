package com.itwill.cryptoexchange.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itwill.cryptoexchange.dao.AccountDao;
import com.itwill.cryptoexchange.dao.BookingDao;
import com.itwill.cryptoexchange.dao.CurrentBalanceDao;
import com.itwill.cryptoexchange.dto.Account;
import com.itwill.cryptoexchange.dto.Booking;
import com.itwill.cryptoexchange.dto.CurrentBalance;
import com.itwill.cryptoexchange.dto.Product;

@Service
@Transactional
public class BookingServiceImpl implements BookingService {
	@Autowired
	private BookingDao bookingDao;

	@Autowired
	private AccountDao accountDao;

	@Autowired
	private CurrentBalanceDao currentBalanceDao;
	
	@Override
	public List<Booking> selectAccHistory(int m_no) throws Exception {
		return bookingDao.selectAccHistory(m_no);
	}

	@Override
	public List<Booking> selectAllByMS(int m_no, int b_status) throws Exception {
		return bookingDao.selectAllByMS(m_no, b_status);
	}

	@Override
	public List<Booking> selectAllByMemberNo(int b_no) throws Exception {
		return bookingDao.selectAllByMemberNo(b_no);
	}

	@Override
	public List<Booking> selectAllByProductNo(int p_no) throws Exception {
		return bookingDao.selectAllByProductNo(p_no);
	}

	@Override
	public List<Booking> selectAllByBookingType(int b_type) throws Exception {
		return bookingDao.selectAllByBookingType(b_type);
	}

	@Override
	public Booking selectOneByMemberNo(int m_no) throws Exception {
		return bookingDao.selectOneByMemberNo(m_no);
	}

	@Override
	public Booking selectOneByBookingNo(int b_no) throws Exception {
		return bookingDao.selectOneByBookingNo(b_no);
	}

	@Override
	public Booking selectOneByBookingType(int b_type) throws Exception {
		return bookingDao.selectOneByBookingType(b_type);
	}

	@Override
	public boolean insertBooking(Booking booking) throws Exception {
		boolean isSuccess = false;

		// 매수예약 검증
		CurrentBalance cur_bal = currentBalanceDao.selectByCK(booking.getProduct(), booking.getMember().getAccount());

		if (booking.getB_type() == 1) {
			booking.getMember().getAccount()
					.setA_bal(booking.getMember().getAccount().getA_bookingBal() - booking.getB_orderPrice());
			
			accountDao.updateAccount(booking.getMember().getAccount());
			isSuccess = true;

			// 매도예약 검증
		} else if (booking.getB_type() == 0) {
			System.out.println("@@##$$%%^^&&**(())__start update");
			cur_bal.setC_bquantity(cur_bal.getC_bquantity() - booking.getB_quantity());
			currentBalanceDao.updateCurrentBalance(cur_bal);
			isSuccess = true;
		}

		bookingDao.insertBooking(booking);
		return isSuccess;

	}

	@Override
	public boolean updateOrDeleteBooking(Booking booking) throws Exception {
		// 0 = 예약, 1 =체결, 2= 취소
		boolean isSuccess = false;

		Account account = accountDao.selectByMember(booking.getMember());

		if (booking.getB_status() == 1) {

			bookingDao.updateBooking(booking);
			if (booking.getB_type() == 0) {

				account.setA_bookingBal(account.getA_bookingBal() + booking.getB_orderPrice());
				accountDao.updateAccount(account);
			}
		} else if (booking.getB_status()==0 || booking.getB_status() == 2) {

			this.orderCount(booking, 1, 0);

		}

		bookingDao.updateBooking(booking);
		isSuccess = true;

		return isSuccess;

	}

	@Override
	public Booking orderCount(Booking booking, int buy, int sell) throws Exception {
		double quantity;

		Booking previousBooking = bookingDao.selectOneByBookingNo(booking.getB_no());
		Account account = accountDao.selectByMember(booking.getMember());
		CurrentBalance cur_bal = currentBalanceDao.selectByCK(booking.getProduct(), account);

		// 수량감소
		if (booking.getB_type() == buy) {
			// 매수
			if (booking.getB_status() == 0) {
				if (previousBooking.getB_quantity() > booking.getB_quantity()) {
					int tempTotalPrice = previousBooking.getB_orderPrice() - booking.getB_orderPrice();
					quantity = previousBooking.getB_quantity() - booking.getB_quantity();
					account.setA_bookingBal(account.getA_bookingBal() + tempTotalPrice);
					// 수량증가
				} else if (previousBooking.getB_quantity() < booking.getB_quantity()) {
					int tempTotalPrice = booking.getB_orderPrice() - previousBooking.getB_orderPrice();
					quantity = booking.getB_quantity() - previousBooking.getB_quantity();
					account.setA_bookingBal(account.getA_bookingBal() - tempTotalPrice);
				}
			} else if (booking.getB_status() == 2) {
				account.setA_bookingBal(account.getA_bookingBal() + booking.getB_orderPrice());
			}
			accountDao.updateAccount(account);

			// 매도
		} else if (booking.getB_type() == sell) {
			// 수량감소

			if (booking.getB_status() == 0) {
			if (previousBooking.getB_quantity() > booking.getB_quantity()) {
				quantity = previousBooking.getB_quantity() - booking.getB_quantity();
				cur_bal.setC_bquantity(cur_bal.getC_quantity() - quantity);
				// 수량증가
			} else if (previousBooking.getB_quantity() < booking.getB_quantity()) {
				quantity = booking.getB_quantity() - previousBooking.getB_quantity();
				cur_bal.setC_bquantity(cur_bal.getC_quantity() + quantity);
			}}else if(booking.getB_status()==2) {

				cur_bal.setC_bquantity(cur_bal.getC_quantity() + booking.getB_quantity());
				
			}

			currentBalanceDao.updateCurrentBalance(cur_bal);

		}

		return booking;
	}

}
