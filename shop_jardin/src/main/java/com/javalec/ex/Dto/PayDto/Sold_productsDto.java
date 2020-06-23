package com.javalec.ex.Dto.PayDto;

public class Sold_productsDto {

	public Sold_productsDto() {

	}

	public Sold_productsDto(String pay_code, String p_code, String id, int amount) {

		this.pay_code = pay_code;
		this.p_code = p_code;
		this.id = id;
		this.amount = amount;

	}

	private String pay_code;
	private String p_code;
	private String id;
	private int amount;

	public String getPay_code() {
		return pay_code;
	}

	public void setPay_code(String pay_code) {
		this.pay_code = pay_code;
	}

	public String getP_code() {
		return p_code;
	}

	public void setP_code(String p_code) {
		this.p_code = p_code;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

}
