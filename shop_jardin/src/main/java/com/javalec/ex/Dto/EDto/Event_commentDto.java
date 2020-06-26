package com.javalec.ex.Dto.EDto;

import java.sql.Timestamp;

public class Event_commentDto {

	public Event_commentDto() {
		
	}

	public Event_commentDto(String ec_num, String e_code, String id, String ec_title, String ec_content,
			Timestamp ec_wdate, Timestamp ec_udate) {
		this.ec_num=ec_num;
		this.e_code=e_code;
		this.id=id;
		this.ec_title=ec_title;
		this.ec_content=ec_content;
		this.ec_wdate=ec_wdate;
		this.ec_udate=ec_udate;
	}

	private String ec_num;
	private String e_code;
	private String id;
	private String ec_title;
	private String ec_content;
	private Timestamp ec_wdate;
	private Timestamp ec_udate;
	
	
	public String getEc_num() {
		return ec_num;
	}

	public void setEc_num(String ec_num) {
		this.ec_num = ec_num;
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

	public String getEc_title() {
		return ec_title;
	}

	public void setEc_title(String ec_title) {
		this.ec_title = ec_title;
	}

	public String getEc_content() {
		return ec_content;
	}

	public void setEc_content(String ec_content) {
		this.ec_content = ec_content;
	}

	public Timestamp getEc_wdate() {
		return ec_wdate;
	}

	public void setEc_wdate(Timestamp ec_wdate) {
		this.ec_wdate = ec_wdate;
	}

	public Timestamp getEc_udate() {
		return ec_udate;
	}

	public void setEc_udate(Timestamp ec_udate) {
		this.ec_udate = ec_udate;
	}


}
