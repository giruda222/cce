package com.itwill.cryptoexchange.dao;

import java.util.List;
import java.util.Optional;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.cryptoexchange.dto.Account;
import com.itwill.cryptoexchange.dto.CP;
import com.itwill.cryptoexchange.dto.CurrentBalance;
import com.itwill.cryptoexchange.dto.Product;

@Repository
public class CurretBalanceDaoImpl implements CurrentBalanceDao {

	@Autowired
	private SessionFactory session;

	@Override
	public List<CurrentBalance> selectAllByAccountNo(int accountNo) throws Exception {
		List<CurrentBalance> cbList;
		try {
		cbList = session.getCurrentSession()
				.createQuery("from CurrentBalance where a_no=" + accountNo, CurrentBalance.class).getResultList();
		}catch(Exception e) {
			cbList=null;
		}
		return cbList;
	}

	@Override
	public List<CurrentBalance> selectAllByProductNo(int productNo) throws Exception {
		List<CurrentBalance> cbList;

		cbList = session.getCurrentSession()
				.createQuery("from CurrentBalance where p_no=" + productNo, CurrentBalance.class).getResultList();

		return cbList;
	}

	@Override
	public boolean insertCurrentBalance(CurrentBalance curbal) throws Exception {
		boolean issuccess = false;

		String a_no = Integer.toString(curbal.getCp().getAccount().getA_no());
		String p_no = Integer.toString(curbal.getCp().getProduct().getP_no());
		String quantity = Double.toString(curbal.getC_quantity());
		String bal = Integer.toString(curbal.getC_avg());
		String bBal = Double.toString(curbal.getC_bquantity());

		Query query = session.getCurrentSession()
				.createSQLQuery("insert into cur_bal(a_no,p_no,c_quantity,c_avg,c_bquantity) values(" + a_no + ","
						+ p_no + "," + quantity + "," + bal + "," + bBal + ")");

		Integer i = query.executeUpdate();

		if (i == 1) {
			issuccess = true;
		}

		return issuccess;
	}

	@Override
	public CurrentBalance selectByCK(Product product, Account account) throws Exception {

		CurrentBalance curbal;
		try {
			curbal = (CurrentBalance) session.getCurrentSession()
					.createQuery("from CurrentBalance where p_no = " + product.getP_no() + "and a_no=" + account.getA_no())
					.getSingleResult();
		} catch (Exception e) {
			curbal = null;
		}
		return curbal;
	}

	@Override
	public boolean deleteCurrentBalance(int productNo, int accountNo) throws Exception {
		boolean issuccess = false;
		Query query = session.getCurrentSession().createQuery("delete from CurrentBalance where p_no=" + productNo + "and a_no=" + accountNo);

		query.executeUpdate();
		issuccess = true;

		return issuccess;
	}

	@Override
	public boolean updateCurrentBalance(CurrentBalance curbal) throws Exception {
		boolean issuccess = false;
		System.out.println("bbbbbbbbbbbb"+curbal);
		
		session.getCurrentSession().update(curbal);
		issuccess = true;

		return issuccess;
	}

}
