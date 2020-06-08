package com.javalec.ex.Dto.PayDto;

public class Save_pointDto {

	public Save_pointDto() {

	}

	public Save_pointDto(String id, int t_point) {
		this.id=id;
		this.t_point=t_point;
	}
	
	private String id;
	private int t_point;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getT_point() {
		return t_point;
	}

	public void setT_point(int t_point) {
		this.t_point = t_point;
	}


}
