package com.itwill.cryptoexchange.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.cryptoexchange.dto.Product;

@Repository
public class ProductDaoImpl implements ProductDao {

	@Autowired
	private SessionFactory session;

	@Override
	public List<Product> selectAll() throws Exception {

		List<Product> productList;
		productList = session.getCurrentSession().createQuery("from product").getResultList();

		return productList;
	}

	
	@Override
	public boolean insertProduct(Product product) throws Exception {
		boolean issuccess = false;
		
			    Integer i = (Integer) session.getCurrentSession().save(product);
			    
			    if(i==1) {
			    	issuccess=true;
			    }

		return issuccess;
	}

	@Override
	public Product selectByProductNo(int p_no) throws Exception {
		Product product;
	
			product = session.getCurrentSession().get(Product.class, p_no);

		return product;
	}


	@Override
	public Product selectByProductName(String p_name) throws Exception {

		Product product;
		
		Query query = session.getCurrentSession().createQuery("from Product where p_name='"+p_name+"'",Product.class);
		product = (Product) query.getSingleResult();
		return product;
	}
	
	
	@Override
	public boolean deleteProduct(int p_no) throws Exception {
		boolean isSuccess = false;

			Product product = session.getCurrentSession().get(Product.class, p_no);
			session.getCurrentSession().delete(product);
			isSuccess=true;
			
	return isSuccess;
	}
	@Override
	public boolean updateProduct(Product product) throws Exception {
		boolean isSuccess = false;

			session.getCurrentSession().update(product);
			isSuccess = true;

		return isSuccess;
	}




	

}
