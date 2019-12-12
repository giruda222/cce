package com.itwill.cryptoexchange.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itwill.cryptoexchange.dao.ProductDao;
import com.itwill.cryptoexchange.dto.Product;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao productDao;

	// 1.selectAll 2.selectByNo 3.insertMembers 4.signin 5.updateMember 6.deleteMember

	@Override
	public List<Product> selectAll() throws Exception {
		return productDao.selectAll();
	}

	@Override
	public Product selectByNo(int p_no) throws Exception {
		return productDao.selectByProductNo(p_no);
	}
	
	@Override
	public Product selectByName(String p_name) throws Exception {
		
		
		return productDao.selectByProductName(p_name);
	}

	@Override
	public boolean insertProduct(Product product) throws Exception {
		boolean isSucces = productDao.insertProduct(product);
		return isSucces;

	}

	
	@Override
	public boolean updateProduct(Product product) throws Exception {
		boolean isSuccess = productDao.updateProduct(product);
		return isSuccess;
	}

	@Override
	public boolean deleteProduct(int p_no) throws Exception {
		boolean isSuccess = productDao.deleteProduct(p_no);
		return isSuccess;
	}



}
