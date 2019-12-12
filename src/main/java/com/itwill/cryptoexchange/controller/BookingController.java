package com.itwill.cryptoexchange.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
import com.itwill.cryptoexchange.service.ProductService;

@Controller
public class BookingController {

	@Autowired
	BookingService bookingService;

	@Autowired
	MemberService memberService;

	@Autowired
	AccountService accountService;

	@Autowired
	CurrentBalanceService currentBalanceService;

	@Autowired
	ProductService productService;

	String forward = "";

	// 1.getMembersList 2.getMember 3.signin 4.signup 5.updateMember 6.deleteMember

	@RequestMapping("/getBookinglist")
	public String getBookingListByMemberNo(int m_no, Model model) throws Exception {
		List<Booking> bookingList = bookingService.selectAllByMemberNo(m_no);
		model.addAttribute("bookingList", bookingList);
		return "bookingListTest";
	}

	@RequestMapping("/getBookingListByProductNo")
	public String getBookingListByProductNo(int p_no, Model model) throws Exception {
		List<Booking> bookingList = bookingService.selectAllByProductNo(p_no);
		model.addAttribute("bookingList", bookingList);
		return "bookingListTest";
	}

	@RequestMapping("/bookingInsert")
	public @ResponseBody String bookingInsert(Booking booking, String live_price, String p_name, String selectRadio,
			HttpSession session) throws Exception {
		String isSuccess = "fail";
		Members member = (Members) session.getAttribute("member");
		booking.setMember(member);
		Account account = (Account) session.getAttribute("account");
		System.out.println(account);

		Product product = productService.selectByName(p_name);
		booking.setProduct(product);
		CurrentBalance cbal = currentBalanceService.SelectByCK(booking.getProduct(), account);

		System.out.println("!@#!@$%$@^^%$&#$&" + booking.getProduct());
		System.out.println("!@#!@$%$@^^%$&#$&" + account);
		System.out.println("!@#!@$%$@^^%$&#$&" + cbal);
		if (booking.getB_type() == 0) {

			if (cbal == null || cbal.getC_bquantity() < booking.getB_quantity()) {
				isSuccess = "You can't!!!";
			}
		}
		if (booking.getB_type() == 1) {

			if (account.getA_bookingBal()<booking.getB_orderPrice()) {
				isSuccess = "You can't!!!";
			}
		}
		if (isSuccess.equals("fail")) {
			CurrentBalance currentBalance = new CurrentBalance();
			CP cp = new CP();
			cp.setAccount(account);
			cp.setProduct(product);
			currentBalance.setCp(cp);
			int live = Integer.parseInt(live_price);
			System.out.println(booking);
			System.out.println(live_price);

			if (live == booking.getB_price() || selectRadio.equals("sj")) {

				booking.setB_status(1);
				
				
				currentBalance.setC_quantity(booking.getB_quantity());
				currentBalance.setC_avg(booking.getB_price());
				currentBalance.setC_bquantity(booking.getB_quantity());
				currentBalanceService.insertOrUpdateOrDelete(currentBalance, booking.getB_type());

			} else if (live > booking.getB_price() || live < booking.getB_price()) {
				booking.setB_status(0);
			}
			Boolean result = bookingService.insertBooking(booking);
			if (result == true) {
				isSuccess = "Y";
			} else if (result == false) {
				isSuccess = "N";
			}
		}
		return isSuccess;
	}

	@RequestMapping("/updateBooking")
	public String updateBooking(Booking booking) throws Exception {
		Product product = new Product();
		product.setP_no(4);
		booking.setProduct(product);
		booking.setB_no(53);
		Members member = new Members();
		member.setM_no(18);
		booking.setMember(member);

		Account account = accountService.selectAccountByMember(booking.getMember());
		CurrentBalance currentBalance = new CurrentBalance();
		CP cp = new CP(account, booking.getProduct());
		currentBalance.setC_quantity(booking.getB_quantity());
		currentBalance.setC_avg(booking.getB_price());
		currentBalance.setCp(cp);
		System.out.println("$$$$$$$$$$" + cp);
		if (booking.getB_status() == 1) {
			currentBalanceService.insertOrUpdateOrDelete(currentBalance, booking.getB_type());

			if (booking.getB_type() == 0) {
				currentBalance = currentBalanceService.SelectByCK(cp.getProduct(), cp.getAccount());
				System.out.println("************************************" + currentBalance);
				booking.setB_avgPrice(currentBalance.getC_avg());

			}
		}

		boolean isSuccess = bookingService.updateOrDeleteBooking(booking);
		return "updateSuccessPage";
	}

	@RequestMapping("/deleteBooking")
	public String deleteBooking(int b_no) throws Exception {
		Booking booking = bookingService.selectOneByBookingNo(b_no);
		booking.setB_status(2);
		System.out.println("@@@@@@@@@@@@"+booking);
		bookingService.updateOrDeleteBooking(booking);

		return "forward:buy-sell";

	}

}
