package com.itwill.cryptoexchange.dto;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.UpdateTimestamp;

@Entity
@Table(name = "booking")
public class Booking {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "b_no")
	private int b_no;

	@ManyToOne(targetEntity = Members.class)
	@JoinColumn(name = "m_no")
	private Members member;

	@ManyToOne(targetEntity = Product.class)
	@JoinColumn(name = "p_no")
	private Product product;

	@Column(name = "b_price")
	private int b_price;

	@Column(name = "b_orderPrice")
	private int b_orderPrice;

	@Column(name = "b_quantity")
	private double b_quantity;

	@Column(name = "b_type")
	private int b_type;

	@UpdateTimestamp
	@Column(name = "b_date")
	private Timestamp b_date;
	
	@Column(name="b_status")
	private int b_status;

	@Column(name="b_avgPrice")
	private int b_avgPrice;
	
	public Booking() {

	}

	

	public Booking(Members member, Product product, int b_price, int b_orderPrice, double b_quantity, int b_type,
			int b_status) {
		super();
		this.member = member;
		this.product = product;
		this.b_price = b_price;
		this.b_orderPrice = b_orderPrice;
		this.b_quantity = b_quantity;
		this.b_type = b_type;
		this.b_status = b_status;
	}



	public Booking(int b_no, Members member, Product product, int b_price, int b_orderPrice, double b_quantity,
			int b_type, Timestamp b_date, int b_status) {
		super();
		this.b_no = b_no;
		this.member = member;
		this.product = product;
		this.b_price = b_price;
		this.b_orderPrice = b_orderPrice;
		this.b_quantity = b_quantity;
		this.b_type = b_type;
		this.b_date = b_date;
		this.b_status = b_status;
	}

	
	

	@Override
	public String toString() {
		return "Booking [b_no=" + b_no + ", member=" + member + ", product=" + product + ", b_price=" + b_price
				+ ", b_orderPrice=" + b_orderPrice + ", b_quantity=" + b_quantity + ", b_type=" + b_type + ", b_date="
				+ b_date + ", b_status=" + b_status + ", b_avgPrice=" + b_avgPrice + "]";
	}



	public int getB_no() {
		return b_no;
	}

	public void setB_no(int b_no) {
		this.b_no = b_no;
	}

	public Members getMember() {
		return member;
	}

	public void setMember(Members member) {
		this.member = member;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public double getB_quantity() {
		return b_quantity;
	}

	public void setB_quantity(double b_quentity) {
		this.b_quantity = b_quentity;
	}

	public int getB_price() {
		return b_price;
	}

	public void setB_price(int b_price) {
		this.b_price = b_price;
	}

	public int getB_orderPrice() {
		return b_orderPrice;
	}

	public void setB_orderPrice(int b_orderPrice) {
		this.b_orderPrice = b_orderPrice;
	}

	public int getB_type() {
		return b_type;
	}

	public void setB_type(int b_type) {
		this.b_type = b_type;
	}



	public Timestamp getB_date() {
		return b_date;
	}



	public void setB_date(Timestamp b_date) {
		this.b_date = b_date;
	}



	public int getB_status() {
		return b_status;
	}



	public void setB_status(int b_status) {
		this.b_status = b_status;
	}
	


	public int getB_avgPrice() {
		return b_avgPrice;
	}



	public void setB_avgPrice(int b_avgPrice) {
		this.b_avgPrice = b_avgPrice;
	}




}
