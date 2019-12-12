package com.itwill.cryptoexchange.dao;


import java.io.Serializable;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.cryptoexchange.dto.Account;
import com.itwill.cryptoexchange.dto.Members;

@Repository
public class AccountDaoImpl implements AccountDao {

	@Autowired
	private SessionFactory session;
	
	
	@Override
	public boolean insertAccount(Account account) throws Exception {
		boolean issuccess = false;
		
		Integer i = (Integer) session.getCurrentSession().save(account);

		if (i != 0) {
			issuccess = true;
		}

		return issuccess;
	}

	@Override
	public Account selectByMember(Members member) throws Exception {
		Account account;

		Query query = session.getCurrentSession().createQuery("from Account where m_no="+member.getM_no(),Account.class);

		account = (Account) query.getSingleResult();
		
		return account;
	}
	
	@Override
	public Account selectByVAccount(String vAcocunt) throws Exception {
		Account account;

		Query query = session.getCurrentSession().createQuery("from Account where a_va="+vAcocunt,Account.class);

		account = (Account) query.getSingleResult();
		
		return account;
	}

	@Override
	public boolean deleteAccountByMemberNo(int memberNo) throws Exception {
		boolean isSuccess = false;
			Account account = session.getCurrentSession().get(Account.class, memberNo);
			session.getCurrentSession().delete(account);
			isSuccess = true;

		return isSuccess;
	}

	@Override
	public boolean updateAccount(Account account) throws Exception {
		boolean isSuccess = false;

			session.getCurrentSession().merge(account);
			isSuccess = true;

		return isSuccess;
	}

}
