package com.itwill.cryptoexchange.dto;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "members")
public class Members {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "m_no")
	private int m_no;
	
	@Column(name = "m_email")
	private String m_email;

	@Column(name = "m_password")
	private String m_password;
	
	@Column(name = "m_name")
	private String m_name;

	@Column(name = "m_phone")
	private String m_phone;

	@OneToOne(mappedBy = "member", cascade = { CascadeType.ALL })
	private Account account;

	@OneToMany(mappedBy = "member", cascade = { CascadeType.ALL })
	private List<Booking> booking;

	public Members() {

	}



	public Members(String m_email, String m_password, String m_name, String m_phone) {
		super();
		this.m_email = m_email;
		this.m_password = m_password;
		this.m_name = m_name;
		this.m_phone = m_phone;
	}

	public Members(int m_no, String m_email, String m_password, String m_name, String m_phone) {
		super();
		this.m_no = m_no;
		this.m_email = m_email;
		this.m_password = m_password;
		this.m_name = m_name;
		this.m_phone = m_phone;
	}



	@Override
	public String toString() {
		return "Members [m_no=" + m_no + ", m_name=" + m_name + ", m_password=" + m_password + ", m_email=" + m_email
				+ ", m_phone=" + m_phone + "]";
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public String getM_password() {
		return m_password;
	}

	public void setM_password(String m_password) {
		this.m_password = m_password;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getM_phone() {
		return m_phone;
	}

	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public List<Booking> getBooking() {
		return booking;
	}

	public void setBooking(List<Booking> booking) {
		this.booking = booking;
	}

}
