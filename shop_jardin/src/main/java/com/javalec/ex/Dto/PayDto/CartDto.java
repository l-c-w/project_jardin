package com.javalec.ex.Dto.PayDto;

public class CartDto {

	public CartDto() {

	}

	public CartDto(String cart_code, String id, String p_code, String p_name, String p_category, int p_price,
			int p_point, int amount) {
		this.cart_code = cart_code;
		this.id = id;
		this.p_code = p_code;
		this.p_name = p_name;
		this.p_category = p_category;
		this.p_price = p_price;
		this.p_point = p_point;
		this.amount = amount;
	}

	private String cart_code, id, p_code, p_name, p_category;
	private int p_price, p_point, amount;

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

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_category() {
		return p_category;
	}

	public void setP_category(String p_category) {
		this.p_category = p_category;
	}

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
		this.p_price = p_price;
	}

	public int getP_point() {
		return p_point;
	}

	public void setP_point(int p_point) {
		this.p_point = p_point;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getCart_code() {
		return cart_code;
	}

	public void setCart_code(String cart_code) {
		this.cart_code = cart_code;
	}

}
