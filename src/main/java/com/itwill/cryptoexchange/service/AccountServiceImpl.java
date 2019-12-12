package com.itwill.cryptoexchange.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itwill.cryptoexchange.dao.AccountDao;
import com.itwill.cryptoexchange.dao.BookingDao;
import com.itwill.cryptoexchange.dto.Account;
import com.itwill.cryptoexchange.dto.Booking;
import com.itwill.cryptoexchange.dto.Members;

@Service
@Transactional
public class AccountServiceImpl implements AccountService{
	@Autowired
	private AccountDao accountDao;
	
	@Autowired
	private BookingDao bookingDao;
	
	
	Booking booking;
	
	public AccountServiceImpl() {
	}

	@Override
	public boolean insertAccount(Account account) throws Exception {
		Account isExist=null;
		Boolean isSuccess=false;
		int va = (int)((Math.random()*100000000)+1);
		int va2 = (int)((Math.random()*100000)+1);
		
		String vAccount = Integer.toString(va)+Integer.toString(va2);
		
		
		try {
			isExist = accountDao.selectByVAccount(vAccount);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		if(isExist==null) {
			account.setA_va(vAccount);
			isSuccess=accountDao.insertAccount(account);
		}
		
		return isSuccess;
	}
	
	@Override
	public Account selectAccountByMember(Members member) throws Exception{
		Account account =null;
		try{
			account = accountDao.selectByMember(member);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return account;
	}
	
	
	
	
	@Override
	public boolean deposit(Account account,int bal,Booking booking) throws Exception {
		
		int cb=account.getA_bal();
		
		account.setA_bal(cb+bal);
		account.setA_bookingBal(account.getA_bookingBal()+bal);
		Boolean isSuccess=accountDao.updateAccount(account);
		

		bookingDao.insertBooking(booking);
		return isSuccess;
	}

	@Override
	public boolean withdraw(Account account,int bal,Booking booking) throws Exception {
		Account a=accountDao.selectByMember(account.getMember());
		int cb=a.getA_bal();
		boolean isSuccess;
		if(a.getA_bookingBal()<account.getA_bal()) {
			isSuccess=false;
		}else {
			a.setA_bal(cb-bal);
			a.setA_bookingBal(a.getA_bookingBal()-bal);
			isSuccess=accountDao.updateAccount(a);
			
			bookingDao.insertBooking(booking);
		}
		
		return isSuccess;
	}

	@Override
	public boolean updateAccount(Account account) throws Exception {
		
		accountDao.updateAccount(account);
		
		return false;
	}

}
