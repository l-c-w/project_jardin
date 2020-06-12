package com.javalec.ex.Dto.MDto;

public class FnqDto {

	public FnqDto() {
		
	}

	
	public FnqDto(String f_num, String f_type, String f_title, String f_content) {
		this.f_num=f_num;
		this.f_type=f_type;
		this.f_title=f_title;
		this.f_content=f_content;
	}
	
	private String f_num;
	private String f_type;
	private String f_title;
	private String f_content;
	
	public String getF_num() {
		return f_num;
	}

	public void setF_num(String f_num) {
		this.f_num = f_num;
	}

	public String getF_type() {
		return f_type;
	}

	public void setF_type(String f_type) {
		this.f_type = f_type;
	}

	public String getF_title() {
		return f_title;
	}

	public void setF_title(String f_title) {
		this.f_title = f_title;
	}

	public String getF_content() {
		return f_content;
	}

	public void setF_content(String f_content) {
		this.f_content = f_content;
	}

}
