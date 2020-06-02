package com.javalec.ex.Dto.PDto;

import java.sql.Timestamp;

public class ProductDto {

	public ProductDto() {

	}

	public ProductDto(String p_code, String p_name, String p_category, String p_case, int unit_cost, String p_event,
			String dis_code, int price, int p_delcost, String p_delfree, int p_point, int calorie, int capacity,
			int stock, String p_file1, String p_file2, String p_file3, String p_file4, String p_file5, String p_file6,
			Timestamp p_wdate, Timestamp p_udate, String p_main) {
		this.p_code = p_code;
		this.p_name = p_name;
		this.p_category = p_category;
		this.p_case = p_case;
		this.unit_cost = unit_cost;
		this.p_event = p_event;
		this.dis_code = dis_code;
		this.price = price;
		this.p_delcost = p_delcost;
		this.p_delfree = p_delfree;
		this.p_point = p_point;
		this.calorie = calorie;
		this.stock = stock;
		this.p_file1 = p_file1;
		this.p_file2 = p_file2;
		this.p_file3 = p_file3;
		this.p_file4 = p_file4;
		this.p_file5 = p_file5;
		this.p_file6 = p_file6;
		this.p_wdate = p_wdate;
		this.p_udate = p_udate;
		this.p_main = p_main;
	}

	private String p_code;
	private String p_name;
	private String p_category;
	private String p_case;
	private int unit_cost;
	private String p_event;
	private String dis_code;
	private int price;
	private int p_delcost;
	private String p_delfree;
	private int p_point;
	private int calorie;
	private int capacity;
	private int stock;
	private String p_file1;
	private String p_file2;
	private String p_file3;
	private String p_file4;
	private String p_file5;
	private String p_file6;
	private Timestamp p_wdate, p_udate;
	private String p_main;

	public String getP_code() {
		return p_code;
	}

	public void setP_code(String p_code) {
		this.p_code = p_code;
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

	public String getP_case() {
		return p_case;
	}

	public void setP_case(String p_case) {
		this.p_case = p_case;
	}

	public int getUnit_cost() {
		return unit_cost;
	}

	public void setUnit_cost(int unit_cost) {
		this.unit_cost = unit_cost;
	}

	public String getP_event() {
		return p_event;
	}

	public void setP_event(String p_event) {
		this.p_event = p_event;
	}

	public String getDis_code() {
		return dis_code;
	}

	public void setDis_code(String dis_code) {
		this.dis_code = dis_code;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getP_delcost() {
		return p_delcost;
	}

	public void setP_delcost(int p_delcost) {
		this.p_delcost = p_delcost;
	}

	public String getP_delfree() {
		return p_delfree;
	}

	public void setP_delfree(String p_delfree) {
		this.p_delfree = p_delfree;
	}

	public int getP_point() {
		return p_point;
	}

	public void setP_point(int p_point) {
		this.p_point = p_point;
	}

	public int getCalorie() {
		return calorie;
	}

	public void setCalorie(int calorie) {
		this.calorie = calorie;
	}

	public int getCapacity() {
		return capacity;
	}

	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public String getP_file1() {
		return p_file1;
	}

	public void setP_file1(String p_file1) {
		this.p_file1 = p_file1;
	}

	public String getP_file2() {
		return p_file2;
	}

	public void setP_file2(String p_file2) {
		this.p_file2 = p_file2;
	}

	public String getP_file3() {
		return p_file3;
	}

	public void setP_file3(String p_file3) {
		this.p_file3 = p_file3;
	}

	public String getP_file4() {
		return p_file4;
	}

	public void setP_file4(String p_file4) {
		this.p_file4 = p_file4;
	}

	public String getP_file5() {
		return p_file5;
	}

	public void setP_file5(String p_file5) {
		this.p_file5 = p_file5;
	}

	public String getP_file6() {
		return p_file6;
	}

	public void setP_file6(String p_file6) {
		this.p_file6 = p_file6;
	}

	public Timestamp getP_wdate() {
		return p_wdate;
	}

	public void setP_wdate(Timestamp p_wdate) {
		this.p_wdate = p_wdate;
	}

	public Timestamp getP_udate() {
		return p_udate;
	}

	public void setP_udate(Timestamp p_udate) {
		this.p_udate = p_udate;
	}

	public String getP_main() {
		return p_main;
	}

	public void setP_main(String p_main) {
		this.p_main = p_main;
	}

}
