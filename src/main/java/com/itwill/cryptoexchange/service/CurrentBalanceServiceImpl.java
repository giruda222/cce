package com.itwill.cryptoexchange.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itwill.cryptoexchange.dao.CurrentBalanceDao;
import com.itwill.cryptoexchange.dto.Account;
import com.itwill.cryptoexchange.dto.CurrentBalance;
import com.itwill.cryptoexchange.dto.Product;

@Service
@Transactional
public class CurrentBalanceServiceImpl implements CurrentBalanceService {
	@Autowired
	private CurrentBalanceDao curbalDao;

	public CurrentBalanceServiceImpl() {

	}

	@Override
	public List<CurrentBalance> SelectAllByAccountNo(int accountNo) throws Exception {
		List<CurrentBalance> curbalList = curbalDao.selectAllByAccountNo(accountNo);

		return curbalList;
	}

	@Override
	public CurrentBalance SelectByCK(Product product, Account account) throws Exception {

		CurrentBalance curbal = curbalDao.selectByCK(product, account);
		return curbal;
	}

	@Override
	public Boolean insertCurrentBalance(CurrentBalance curbal) throws Exception {
		curbal.setC_bquantity(curbal.getC_quantity());
		Boolean isSuccess = false;
		isSuccess = curbalDao.insertCurrentBalance(curbal);
		return isSuccess;
	}

	@Override
	public String updateCurrentBalacne(CurrentBalance curbal, int type) throws Exception {

		String resultQuantity = null;

		CurrentBalance currentBalance = curbalDao.selectByCK(curbal.getCp().getProduct(),
				curbal.getCp().getAccount());

		double currentQuantity = currentBalance.getC_quantity();

		System.out.println("******************************************************in method" + currentQuantity);
		if (type == 1) {

			currentBalance.setC_bquantity(curbal.getC_quantity() + currentBalance.getC_bquantity());
			currentBalance.setC_quantity(currentQuantity + curbal.getC_quantity());

			System.out
					.println("******************************************************" + currentBalance.getC_quantity());
			resultQuantity = Double.toString(currentBalance.getC_quantity());

			Double resultAvg = ((currentBalance.getC_avg() * currentQuantity)
					+ (curbal.getC_avg() * curbal.getC_quantity())) / currentBalance.getC_quantity();

			currentBalance.setC_avg((int) Math.round(resultAvg));

		} else if (type == 0) {

			if (currentBalance.getC_quantity() >= curbal.getC_quantity()) {
				currentBalance.setC_quantity(currentQuantity - curbal.getC_quantity());
				System.out.println("***********************************************************update by 0");
				resultQuantity = Double.toString(currentQuantity - curbal.getC_quantity());
				System.out.println("***********************************************************" + resultQuantity);
			}
		}

		curbalDao.updateCurrentBalance(currentBalance);

		return resultQuantity;
	}

	@Override
	public Boolean deleteCurrentBalance(int productNo, int accountNo) throws Exception {

		Boolean isSuccess = false;

		isSuccess = curbalDao.deleteCurrentBalance(productNo, accountNo);

		return isSuccess;
	}

	@Override
	public String insertOrUpdateOrDelete(CurrentBalance curbal, int type) throws Exception {

		String isSuccess = null;
		String nowQuantity = null;
		List<CurrentBalance> curbalList;
		try {
			curbalList = curbalDao.selectAllByAccountNo(curbal.getCp().getAccount().getA_no());
			System.out.println(curbalList);
		if (curbalList.size() != 0) {
			for (CurrentBalance currentBalance : curbalList) {

				System.out.println("***********************************************insert method");
				if (currentBalance.getCp().getProduct().getP_no() == curbal.getCp().getProduct().getP_no()) {
					System.out.println("****************************************************startUpdate");
					nowQuantity = this.updateCurrentBalacne(curbal, type);
					System.out.println("*************************************************do update");
					isSuccess = "update Success";
				}

			}
			if (nowQuantity.equals("0.0")) {

				System.out.println("************************************start Delete");
				Boolean delete = this.deleteCurrentBalance(curbal.getCp().getProduct().getP_no(),
						curbal.getCp().getAccount().getA_no());
				if (delete == true) {
					isSuccess = "deleteSuccess";
				}

			}// else if (Double.parseDouble(nowQuantity) > 0) {
				//isSuccess = "updateSuccess";
		//	}

		}	}catch(Exception e) {
			e.printStackTrace();
		}
		if (isSuccess == null) {
			System.out.println("************************************startInsert");
			this.insertCurrentBalance(curbal);
			isSuccess = "insert Success";
			System.out.println("*****************************************do Insert");
		}

		System.out.println("***************************************" + isSuccess);
		return isSuccess;
	}

}
