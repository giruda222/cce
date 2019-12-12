package com.itwill.cryptoexchange.dao;

import java.util.List;

import com.itwill.cryptoexchange.dto.Product;

public interface ProductDao {

	/*
	 * READ ALL
	 */
	List<Product> selectAll() throws Exception;

	/*
	 * CREATE
	 */
	boolean insertProduct(Product product) throws Exception;

	/*
	 * READ ONE
	 */
	Product selectByProductNo(int p_no) throws Exception;
	
	Product selectByProductName(String p_name) throws Exception;

	/*
	 * DELETE
	 */
	boolean deleteProduct(int p_no) throws Exception;

	/*
	 * UPDATE
	 */
	boolean updateProduct(Product product) throws Exception;
}
