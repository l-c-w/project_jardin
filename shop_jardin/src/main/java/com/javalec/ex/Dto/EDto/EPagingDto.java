package com.javalec.ex.Dto.EDto;

public class EPagingDto {

	public EPagingDto() {

	}

	public EPagingDto(String e_code, int page, int startpage, int endpage, int maxpage, int startrow, int endrow) {
		this.e_code=e_code;
		this.page=page;
		this.startpage=startpage;
		this.endpage=endpage;
		this.maxpage=maxpage;
		this.startrow=startrow;
		this.endrow=endrow;
	}

	private String e_code;
	private int page;
	private int startpage;
	private int endpage;
	private int maxpage;
	private int startrow;
	private int endrow;
	
	public String getE_code() {
		return e_code;
	}

	public void setE_code(String e_code) {
		this.e_code = e_code;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getStartpage() {
		return startpage;
	}

	public void setStartpage(int startpage) {
		this.startpage = startpage;
	}

	public int getEndpage() {
		return endpage;
	}

	public void setEndpage(int endpage) {
		this.endpage = endpage;
	}

	public int getMaxpage() {
		return maxpage;
	}

	public void setMaxpage(int maxpage) {
		this.maxpage = maxpage;
	}

	public int getStartrow() {
		return startrow;
	}

	public void setStartrow(int startrow) {
		this.startrow = startrow;
	}

	public int getEndrow() {
		return endrow;
	}

	public void setEndrow(int endrow) {
		this.endrow = endrow;
	}
	
	
}
