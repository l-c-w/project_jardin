package com.javalec.ex.Dto.PayDto;

import java.sql.Timestamp;

public class Use_pointDto {

	public Use_pointDto() {

	}

	public Use_pointDto(String id, int u_point, Timestamp u_date) {
		this.id=id;
		this.u_point=u_point;
		this.u_date=u_date;
	}

	private String id;
	private int u_point;
	private Timestamp u_date;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getU_point() {
		return u_point;
	}

	public void setU_point(int u_point) {
		this.u_point = u_point;
	}

	public Timestamp getU_date() {
		return u_date;
	}

	public void setU_date(Timestamp u_date) {
		this.u_date = u_date;
	}

}