package com.itwill.cryptoexchange.service;

import java.util.List;

import com.itwill.cryptoexchange.dto.Account;
import com.itwill.cryptoexchange.dto.CurrentBalance;
import com.itwill.cryptoexchange.dto.Product;

public interface CurrentBalanceService {

	
	List<CurrentBalance> SelectAllByAccountNo(int accountNo) throws Exception;

	Boolean insertCurrentBalance(CurrentBalance curbal) throws Exception;
	
	String updateCurrentBalacne(CurrentBalance curbal,int type) throws Exception;
		
	Boolean deleteCurrentBalance(int productNo, int accountNo) throws Exception;

	String insertOrUpdateOrDelete(CurrentBalance curbal,int type) throws Exception;
	
	CurrentBalance SelectByCK(Product product ,Account account) throws Exception;

}