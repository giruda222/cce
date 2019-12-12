package com.itwill.cryptoexchange.dto;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="product")
public class Product {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="p_no")
	private int p_no;
	
	@Column(name="p_name")
	private String p_name;
	
	@Column(name="p_desc")
	private String p_desc;
	
	
	@OneToMany(targetEntity = Booking.class ,mappedBy="product" ,cascade= {CascadeType.PERSIST,CascadeType.MERGE,CascadeType.DETACH,CascadeType.REFRESH})
	private List<Booking> booking;
	
	
	@ElementCollection
	private List<CurrentBalance> cbal;

	
	public Product() {
		
	}
	
	
	public Product(int p_no, String p_name, String p_desc) {
		super();
		this.p_no = p_no;
		this.p_name = p_name;
		this.p_desc = p_desc;
	}


	public Product(String p_name, String p_desc) {
		super();
		this.p_name = p_name;
		this.p_desc = p_desc;
	}



	@Override
	public String toString() {
		return "Product [p_no=" + p_no + ", p_name=" + p_name + ", p_desc=" + p_desc + "]";
	}
	
	
	
	public int getP_no() {
		return p_no;
	}
	public void setP_no(int p_no) {
		this.p_no = p_no;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_desc() {
		return p_desc;
	}
	public void setP_desc(String p_desc) {
		this.p_desc = p_desc;
	}


	public List<Booking> getBooking() {
		return booking;
	}


	public void setBooking(List<Booking> booking) {
		this.booking = booking;
	}


	public List<CurrentBalance> getCbal() {
		return cbal;
	}


	public void setCbal(List<CurrentBalance> cbal) {
		this.cbal = cbal;
	}
	
	
	
	
}
