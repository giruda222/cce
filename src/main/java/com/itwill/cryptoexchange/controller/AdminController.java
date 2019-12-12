package com.itwill.cryptoexchange.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.cryptoexchange.dto.Account;
import com.itwill.cryptoexchange.dto.Booking;
import com.itwill.cryptoexchange.dto.CP;
import com.itwill.cryptoexchange.dto.CurrentBalance;
import com.itwill.cryptoexchange.dto.Members;
import com.itwill.cryptoexchange.dto.Product;
import com.itwill.cryptoexchange.service.AccountService;
import com.itwill.cryptoexchange.service.BookingService;
import com.itwill.cryptoexchange.service.CurrentBalanceService;
import com.itwill.cryptoexchange.service.MemberService;

@Controller
public class AdminController {

	@Autowired
	BookingService bookingService;

	@Autowired
	MemberService memberService;

	@Autowired
	AccountService accountService;

	@Autowired
	CurrentBalanceService currentBalanceService;

	@RequestMapping("/comparePrice")
	public String comparePrice(int liveprice, Model model) throws Exception {
//		String returnVal = "fail";

		List<Booking> bookingListByProductNo = (ArrayList<Booking>) bookingService.selectAllByProductNo(4);
		System.out.println("!@#$%^&*!@#$%^&*1"+liveprice);
		for (Booking booking : bookingListByProductNo) {
			if (booking.getB_status() == 0) {
				// 매수
				if (booking.getB_type() == 1 && booking.getB_price() >= liveprice) {
					booking.setB_status(1);// 체결
					bookingService.updateOrDeleteBooking(booking);

					CurrentBalance currentBalance = new CurrentBalance();
					CP cp = new CP(booking.getMember().getAccount(), booking.getProduct());
					currentBalance.setC_quantity(booking.getB_quantity());
					currentBalance.setC_avg(booking.getB_price());
					currentBalance.setCp(cp);
					
					booking.getMember().getAccount().setA_bal(booking.getMember().getAccount().getA_bal() - booking.getB_orderPrice());
					accountService.updateAccount(booking.getMember().getAccount());
					
					System.out.println("!@#$%^&*!@#$%^&*" + booking.getB_price());
					
					bookingService.updateOrDeleteBooking(booking);
					System.out.println("1020304050"+booking.getMember().getAccount());
					accountService.updateAccount(booking.getMember().getAccount());
					currentBalanceService.insertOrUpdateOrDelete(currentBalance, booking.getB_type());

					// 매도
				} else if (booking.getB_type() == 0 && booking.getB_price() <= liveprice) {
					booking.setB_status(1);// 체결

					CurrentBalance currentBalance = new CurrentBalance();

					CP cp = new CP(booking.getMember().getAccount(), booking.getProduct());

					currentBalance.setC_quantity(booking.getB_quantity());
					currentBalance.setC_avg(booking.getB_price());
					currentBalance.setCp(cp);
					
					
					booking.setB_avgPrice(currentBalance.getC_avg());
					int ss = (int) (booking.getB_price() * booking.getB_quantity());
					booking.getMember().getAccount().setA_bal(booking.getMember().getAccount().getA_bal() + booking.getB_orderPrice());
					booking.getMember().getAccount().setA_bookingBal(booking.getMember().getAccount().getA_bookingBal()+booking.getB_orderPrice());
					System.out.println("!@#$%^&*!@#$%^&*" + booking.getB_price());
					
					System.out.println("1020304050"+booking.getMember().getAccount());
					bookingService.updateOrDeleteBooking(booking);
					accountService.updateAccount(booking.getMember().getAccount());
					currentBalanceService.insertOrUpdateOrDelete(currentBalance, booking.getB_type());
				}

			}
		}
		model.addAttribute("bookingListByProductNo",bookingListByProductNo);
//			returnVal="success";
		return "admin";

	}
}