package com.javalec.ex.Dto;

public class Winner_joinersDto {

	public Winner_joinersDto() {
		
	}

	public Winner_joinersDto(String w_code, String e_code, String id, String w_state) {
		this.w_code=w_code;
		this.e_code=e_code;
		this.id=id;
		this.w_state=w_state;

	}

	private String w_code;
	private String e_code;
	private String id;
	private String w_state;
	
	public String getW_code() {
		return w_code;
	}

	public void setW_code(String w_code) {
		this.w_code = w_code;
	}

	public String getE_code() {
		return e_code;
	}

	public void setE_code(String e_code) {
		this.e_code = e_code;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getW_state() {
		return w_state;
	}

	public void setW_state(String w_state) {
		this.w_state = w_state;
	}

}
