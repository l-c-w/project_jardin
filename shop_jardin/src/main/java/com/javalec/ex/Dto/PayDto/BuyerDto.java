package com.javalec.ex.Dto.PayDto;

public class BuyerDto {

	public BuyerDto() {

	}

	public BuyerDto(String id, String home_post, String home_address1, String home_address2, String com_post,
			String com_address1, String com_address2, String payment_method, String payment_info) {
		this.id=id;
		this.home_post=home_post;
		this.home_address1=home_address1;
		this.home_address2=home_address2;
		this.com_post=com_post;
		this.com_address1=com_address1;
		this.com_address2=com_address2;
		this.payment_method=payment_method;
		this.payment_info=payment_info;
	}

	private String id;
	private String home_post;
	private String home_address1;
	private String home_address2;
	private String com_post;
	private String com_address1;
	private String com_address2;
	private String payment_method;
	private String payment_info;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getHome_post() {
		return home_post;
	}

	public void setHome_post(String home_post) {
		this.home_post = home_post;
	}

	public String getHome_address1() {
		return home_address1;
	}

	public void setHome_address1(String home_address1) {
		this.home_address1 = home_address1;
	}

	public String getHome_address2() {
		return home_address2;
	}

	public void setHome_address2(String home_address2) {
		this.home_address2 = home_address2;
	}

	public String getCom_post() {
		return com_post;
	}

	public void setCom_post(String com_post) {
		this.com_post = com_post;
	}

	public String getCom_address1() {
		return com_address1;
	}

	public void setCom_address1(String com_address1) {
		this.com_address1 = com_address1;
	}

	public String getCom_address2() {
		return com_address2;
	}

	public void setCom_address2(String com_address2) {
		this.com_address2 = com_address2;
	}

	public String getPayment_method() {
		return payment_method;
	}

	public void setPayment_method(String payment_method) {
		this.payment_method = payment_method;
	}

	public String getPayment_info() {
		return payment_info;
	}

	public void setPayment_info(String payment_info) {
		this.payment_info = payment_info;
	}

}
