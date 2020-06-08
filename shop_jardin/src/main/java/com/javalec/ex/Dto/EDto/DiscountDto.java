package com.javalec.ex.Dto.EDto;

import java.sql.Timestamp;

public class DiscountDto {

	public DiscountDto() {
		
	}
	public DiscountDto(String dis_code, String p_code, String e_code, String dis_name, String dis_content, int dis_rate,
			Timestamp dis_start, Timestamp dis_end) {
		this.dis_code=dis_code;
		this.p_code=p_code;
		this.e_code=e_code;
		this.dis_name=dis_name;
		this.dis_content=dis_content;
		this.dis_rate=dis_rate;
		this.dis_start=dis_start;
		this.dis_end=dis_end;
	}

	private String dis_code;
	private String p_code;
	private String e_code;
	private String dis_name;
	private String dis_content;
	private int dis_rate;
	private Timestamp dis_start;
	private Timestamp dis_end;
	
	public String getDis_code() {
		return dis_code;
	}
	public void setDis_code(String dis_code) {
		this.dis_code = dis_code;
	}
	public String getP_code() {
		return p_code;
	}
	public void setP_code(String p_code) {
		this.p_code = p_code;
	}
	public String getE_code() {
		return e_code;
	}
	public void setE_code(String e_code) {
		this.e_code = e_code;
	}
	public String getDis_name() {
		return dis_name;
	}
	public void setDis_name(String dis_name) {
		this.dis_name = dis_name;
	}
	public String getDis_content() {
		return dis_content;
	}
	public void setDis_content(String dis_content) {
		this.dis_content = dis_content;
	}
	public int getDis_rate() {
		return dis_rate;
	}
	public void setDis_rate(int dis_rate) {
		this.dis_rate = dis_rate;
	}
	public Timestamp getDis_start() {
		return dis_start;
	}
	public void setDis_start(Timestamp dis_start) {
		this.dis_start = dis_start;
	}
	public Timestamp getDis_end() {
		return dis_end;
	}
	public void setDis_end(Timestamp dis_end) {
		this.dis_end = dis_end;
	}	
	
}
