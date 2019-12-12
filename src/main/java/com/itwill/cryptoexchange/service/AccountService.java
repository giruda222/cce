package com.itwill.cryptoexchange.service;

import com.itwill.cryptoexchange.dto.Account;
import com.itwill.cryptoexchange.dto.Booking;
import com.itwill.cryptoexchange.dto.Members;

public interface AccountService {

	boolean insertAccount(Account account) throws Exception;

	boolean deposit(Account account, int bal,Booking booking) throws Exception;

	Account selectAccountByMember(Members member) throws Exception;

	boolean withdraw(Account account, int bal,Booking booking) throws Exception;
	
	boolean updateAccount(Account account) throws Exception;

}
