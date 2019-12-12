package com.itwill.cryptoexchange.dao;

import java.util.List;

import com.itwill.cryptoexchange.dto.Account;
import com.itwill.cryptoexchange.dto.CurrentBalance;
import com.itwill.cryptoexchange.dto.Product;


public interface CurrentBalanceDao {

	/*
	 * READ ALL
	 */
	List<CurrentBalance> selectAllByAccountNo(int accountNo) throws Exception;

	List<CurrentBalance> selectAllByProductNo(int productNo) throws Exception;
	/*
	 * CREATE
	 */
	boolean insertCurrentBalance(CurrentBalance currentBalance) throws Exception;
	
	
	/*
	 * READ ONE
	 */
	CurrentBalance selectByCK(Product product, Account account) throws Exception;

	/*
	 * DELETE
	 */
	boolean deleteCurrentBalance(int productNo, int accountNo) throws Exception;

	/*
	 * UPDATE
	 */
	boolean updateCurrentBalance(CurrentBalance currentBalance) throws Exception;
}
