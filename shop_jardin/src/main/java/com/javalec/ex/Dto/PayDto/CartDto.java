package com.javalec.ex.Dto.PayDto;

public class CartDto {

	public CartDto() {

	}

	public CartDto(String cart_code, String id, String p_code, int amount) {
		this.cart_code = cart_code;
		this.id = id;
		this.p_code = p_code;
		this.amount = amount;
	}

	private String cart_code;
	private String id;
	private String p_code;
	private int amount;

	public String getCart_code() {
		return cart_code;
	}

	public void setCart_code(String cart_code) {
		this.cart_code = cart_code;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getP_code() {
		return p_code;
	}

	public void setP_code(String p_code) {
		this.p_code = p_code;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

}
