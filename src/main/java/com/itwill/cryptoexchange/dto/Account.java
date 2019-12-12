package com.itwill.cryptoexchange.dto;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "account")
public class Account {

	@Id
	@Column(name = "a_no")
	private int a_no;

	@OneToOne(targetEntity = Members.class, cascade = CascadeType.ALL)
	@JoinColumn(name = "m_no", referencedColumnName = "m_no",insertable=true)
	private Members member;

	@Column(name = "a_bal")
	private int a_bal;
	
	@Column(name="a_bookingBal")
	private int a_bookingBal;

	@Column(name="a_bank")
	private String a_bank;
	
	@Column(name="a_va")
	private String a_va;
	
	
	public Account() {

	}

	@ElementCollection
	private List<CP> cp;
	

	

	





	public Account(int a_no, Members member, int a_bal, int a_bookingBal, String a_bank, String a_va) {
		super();
		this.a_no = a_no;
		this.member = member;
		this.a_bal = a_bal;
		this.a_bookingBal = a_bookingBal;
		this.a_bank = a_bank;
		this.a_va = a_va;
	}
	
	



	@Override
	public String toString() {
		return "Account [a_no=" + a_no + ", member=" + member + ", a_bal=" + a_bal + ", a_bookingBal=" + a_bookingBal
				+ ", a_bank=" + a_bank + ", a_vr=" + a_va + "]";
	}





	public Members getMember() {
		return member;
	}



	public void setMember(Members member) {
		this.member = member;
	}



	public int getA_no() {
		return a_no;
	}

	public void setA_no(int a_no) {
		this.a_no = a_no;
	}

	
	public int getA_bal() {
		return a_bal;
	}

	public void setA_bal(int a_bal) {
		this.a_bal = a_bal;
	}



	public int getA_bookingBal() {
		return a_bookingBal;
	}



	public void setA_bookingBal(int a_bookingBal) {
		this.a_bookingBal = a_bookingBal;
	}



	public List<CP> getCp() {
		return cp;
	}



	public void setCp(List<CP> cp) {
		this.cp = cp;
	}



	public String getA_bank() {
		return a_bank;
	}



	public void setA_bank(String a_bank) {
		this.a_bank = a_bank;
	}





	public String getA_va() {
		return a_va;
	}





	public void setA_va(String a_va) {
		this.a_va = a_va;
	}




	
}
