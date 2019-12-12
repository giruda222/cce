package com.itwill.cryptoexchange.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwill.cryptoexchange.dto.Account;
import com.itwill.cryptoexchange.dto.Booking;
import com.itwill.cryptoexchange.dto.CurrentBalance;
import com.itwill.cryptoexchange.dto.Members;
import com.itwill.cryptoexchange.service.BookingService;
import com.itwill.cryptoexchange.service.CurrentBalanceService;


@Controller
public class MainController {
	
	@Autowired
	CurrentBalanceService currentBalanceService;
	@Autowired
	BookingService bookingService;
	
	@RequestMapping("/accounts")
	public String goAccounts(HttpSession session,Model model) throws Exception{
		String page;
		Account account= null;
		account = (Account)session.getAttribute("account");
		System.out.println(account);
		Members member = (Members) session.getAttribute("member");
		System.out.println(member);
		if(account==null) {
			page="forward:add-bank";
			
		}else {
			List<CurrentBalance> cbList = currentBalanceService.SelectAllByAccountNo(account.getA_no());
			model.addAttribute("cbList", cbList);
			page="deposit_withdraw";
			
		}
		System.out.println(page);
		return page;
	}
	
	@RequestMapping("/add-bank")
	public String goAddBank() throws Exception{
		System.out.println("**********add-bank");
		return "add-bank";
	}
	
	//////////////////////////
	@RequestMapping("/buy-sell")
	public String goBuySell(HttpSession session, Model model) throws Exception {
		Members member = (Members) session.getAttribute("member");
		int m_no = member.getM_no();
		Account account = (Account) session.getAttribute("account");
		int a_no = account.getA_no();

		List<CurrentBalance> cbList = currentBalanceService.SelectAllByAccountNo(a_no);
		// System.out.println("************"+cbList);
		System.out.println("****####m_no:" + m_no);
		List<Booking> bookingList = bookingService.selectAllByMS(m_no, 0);
		List<Booking> historyList = bookingService.selectAllByMS(m_no, 1);
		List<Booking> cancleList = bookingService.selectAllByMS(m_no, 2);
		List<Booking> accList = bookingService.selectAccHistory(m_no);

		/*
		 * for (Booking acc : accList) { System.out.println("*****" + acc); }
		 */
		model.addAttribute("cbList", cbList);
		model.addAttribute("accList", accList);
		model.addAttribute("bookingList", bookingList);
		model.addAttribute("historyList", historyList);
		model.addAttribute("cancleList", cancleList);

		return "buy-sell";
	}

	@RequestMapping("/current")
	public @ResponseBody String goCurrent() throws Exception {
		return "Y";
	}
	
	@RequestMapping("/gotodouble")
	public String goToDouble(int price, String coin_name,Model model) throws Exception {
		model.addAttribute("coin_name", coin_name);
		return "index";
	}
	
	//////////hs/////////////
	
	@RequestMapping("/demo")
	public String goIndex() throws Exception{
		
		return "demo";
	}
	
	@RequestMapping("/demo_index")
	public String goDemoIndex() throws Exception{
		
		return "demo_index";
	}
	
	@RequestMapping("/prices")
	public String goPrices() throws Exception{
		
		return "prices";
	}
	
	@RequestMapping("/settings")
	public String goSettings() throws Exception{
		
		return "settings";
	}
	
	
	

}
