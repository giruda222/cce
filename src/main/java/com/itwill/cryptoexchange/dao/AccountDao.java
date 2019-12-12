package com.itwill.cryptoexchange.dao;


import com.itwill.cryptoexchange.dto.Account;
import com.itwill.cryptoexchange.dto.Members;


public interface AccountDao {

	

	/*
	 * CREATE
	 */
	boolean insertAccount(Account account) throws Exception;
	
	/*
	 * READ ONE
	 */
	Account selectByMember(Members member) throws Exception;
	
	Account selectByVAccount(String vAccount) throws Exception;

	/*
	 * DELETE
	 */
	boolean deleteAccountByMemberNo(int no) throws Exception;

	/*
	 * UPDATE
	 */
	boolean updateAccount(Account account) throws Exception;
}
