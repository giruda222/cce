package com.itwill.cryptoexchange.dto;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "cur_bal")
public class CurrentBalance {

	@EmbeddedId
	private CP cp;

	@Column(name = "c_quantity")
	private double c_quantity;

	@Column(name = "c_avg")
	private int c_avg;

	@Column(name = "c_bquantity")
	private double c_bquantity;

	public CurrentBalance() {

	}

	public CurrentBalance(CP cp, double c_quantity, int c_avg, double c_bquantity) {
		super();
		this.cp = cp;
		this.c_quantity = c_quantity;
		this.c_avg = c_avg;
		this.c_bquantity = c_bquantity;
	}

	@Override
	public String toString() {
		return "CurrentBalance [cp=" + cp + ", c_quantity=" + c_quantity + ", c_avg=" + c_avg + ", c_bquantity="
				+ c_bquantity + "]";
	}

	public CP getCp() {
		return cp;
	}

	public void setCp(CP cp) {
		this.cp = cp;
	}

	public double getC_quantity() {
		return c_quantity;
	}

	public void setC_quantity(double c_quantity) {
		this.c_quantity = c_quantity;
	}

	public int getC_avg() {
		return c_avg;
	}

	public void setC_avg(int c_avg) {
		this.c_avg = c_avg;
	}

	public double getC_bquantity() {
		return c_bquantity;
	}

	public void setC_bquantity(double c_bquantity) {
		this.c_bquantity = c_bquantity;
	}
}
