package com.javalec.ex.Dto.PayDto;

import java.sql.Timestamp;

public class PaymentDto {
	public PaymentDto() {

	}

	public PaymentDto(String pay_code, String id, String cou_code, String p_code, int pay_point, String nomem_check,
			Timestamp pay_date, int total_price, String pay_state, String pay_method, String pay_del,
			String pay_demand) {

		this.pay_code = pay_code;
		this.id = id;
		this.cou_code = cou_code;
		this.p_code = p_code;
		this.pay_point = pay_point;
		this.nomem_check = nomem_check;
		this.pay_date = pay_date;
		this.total_price = total_price;
		this.pay_state = pay_state;
		this.pay_method = pay_method;
		this.pay_del = pay_del;
		this.pay_demand = pay_demand;
	}

	private String pay_code;
	private String id;
	private String cou_code;
	private String p_code;
	private int pay_point;
	private String nomem_check;
	private Timestamp pay_date;
	private int total_price;
	private String pay_state;
	private String pay_method;
	private String pay_del;
	private String pay_demand;

	public String getPay_code() {
		return pay_code;
	}

	public void setPay_code(String pay_code) {
		this.pay_code = pay_code;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCou_code() {
		return cou_code;
	}

	public void setCou_code(String cou_code) {
		this.cou_code = cou_code;
	}

	public String getP_code() {
		return p_code;
	}

	public void setP_code(String p_code) {
		this.p_code = p_code;
	}

	public int getPay_point() {
		return pay_point;
	}

	public void setPay_point(int pay_point) {
		this.pay_point = pay_point;
	}

	public String getNomem_check() {
		return nomem_check;
	}

	public void setNomem_check(String nomem_check) {
		this.nomem_check = nomem_check;
	}

	public Timestamp getPay_date() {
		return pay_date;
	}

	public void setPay_date(Timestamp pay_date) {
		this.pay_date = pay_date;
	}

	public int getTotal_price() {
		return total_price;
	}

	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}

	public String getPay_state() {
		return pay_state;
	}

	public void setPay_state(String pay_state) {
		this.pay_state = pay_state;
	}

	public String getPay_method() {
		return pay_method;
	}

	public void setPay_method(String pay_method) {
		this.pay_method = pay_method;
	}

	public String getPay_del() {
		return pay_del;
	}

	public void setPay_del(String pay_del) {
		this.pay_del = pay_del;
	}

	public String getPay_demand() {
		return pay_demand;
	}

	public void setPay_demand(String pay_demand) {
		this.pay_demand = pay_demand;
	}

}
