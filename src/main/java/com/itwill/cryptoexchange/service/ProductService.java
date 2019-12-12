package com.itwill.cryptoexchange.service;

import java.util.List;

import com.itwill.cryptoexchange.dto.Product;

public interface ProductService {

	List<Product> selectAll() throws Exception;

	Product selectByNo(int p_no) throws Exception;

	Product selectByName(String p_name) throws Exception;
	
	boolean insertProduct(Product product) throws Exception;

	boolean updateProduct(Product product) throws Exception;

	boolean deleteProduct(int p_no) throws Exception;
	
	

}