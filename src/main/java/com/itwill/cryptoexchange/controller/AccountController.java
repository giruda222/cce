package com.itwill.cryptoexchange.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwill.cryptoexchange.dto.Account;
import com.itwill.cryptoexchange.dto.Booking;
import com.itwill.cryptoexchange.dto.CP;
import com.itwill.cryptoexchange.dto.CurrentBalance;
import com.itwill.cryptoexchange.dto.Members;
import com.itwill.cryptoexchange.service.AccountService;
import com.itwill.cryptoexchange.service.CurrentBalanceService;
import com.itwill.cryptoexchange.service.MemberService;
import com.itwill.cryptoexchange.service.ProductService;

@Controller
public class AccountController {
	
	@Autowired
	MemberService memberService;

	@Autowired
	AccountService accountService;
	
	@Autowired
	CurrentBalanceService currentBalanceService;

	@Autowired
	ProductService productService;
	
	@RequestMapping("/insertAccount")
	public String insertAccount(Account account,HttpSession session) throws Exception {
		
		Members member = (Members) session.getAttribute("member");
		account.setMember(member);
		
		Boolean isSuccess = accountService.insertAccount(account);
		
		if(isSuccess==false) {
			accountService.insertAccount(account);
		}
		
		
		return "index";
	}

	@RequestMapping("/deposit")
	public @ResponseBody String ipgum(HttpSession session,Booking booking) throws Exception {
		String returnValue = "fail";
		Account account=(Account)session.getAttribute("account");
		booking.setMember(account.getMember());
		booking.setB_status(5);
		Boolean isSuccess = accountService.deposit(account,booking.getB_orderPrice(),booking);
		if(isSuccess==true) {
			returnValue="success";
		}
		return returnValue;
	}

	@RequestMapping("/withdraw")
	public @ResponseBody String chulgum(HttpSession session,Booking booking) throws Exception {
		String returnValue = "fail";
		Account account=(Account)session.getAttribute("account");
		booking.setMember(account.getMember());
		booking.setB_status(6);
		Boolean isSuccess = accountService.withdraw(account, booking.getB_orderPrice(),booking);
		if(isSuccess==true) {
			returnValue="success";
		}
		return returnValue;
	}
	
	@RequestMapping("/insertCbal")
	public String insertCbal(CurrentBalance currentBalance) throws Exception {
		
		
		Account account;
		
		account =accountService.selectAccountByMember(memberService.selectByNo(18));
		
		CP cp=new CP();
		System.out.println("****************************"+account);
		cp.setAccount(account);
		
		cp.setProduct(productService.selectByNo(4));
		
		
		
		//(accountService.selectAccountByAno(memberService.selectByNo(18)),productService.selectByNo(4));
		
		currentBalance.setCp(cp);
		
		currentBalance.setC_quantity(8);
		
		currentBalance.setC_avg(4500);
		
		String result=currentBalanceService.insertOrUpdateOrDelete(currentBalance, 1);
		
		System.out.println("*****************************************************END service");
		
		System.out.println(result);
		return "index";
		
	}
	
	@RequestMapping("/deleteCbal")
	public String delete(int productNo,int accountNo)throws Exception{
		
		
		currentBalanceService.deleteCurrentBalance(productNo, accountNo);
		
		return "index";
		
		
	}
	
	
}
