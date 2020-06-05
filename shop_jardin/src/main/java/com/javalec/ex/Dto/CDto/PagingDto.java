package com.javalec.ex.Dto.CDto;

public class PagingDto {
	

	             // 현재페이지, 시작페이지, 끝페이지, 게시글 총 갯수, 페이지당 글 갯수, 마지막페이지

	private int nowPage, startPage, endPage, total, cntPerPage, lastPage, start, end;

	private int cntPage = 5; // 출력할 리스트 개수 1~5 , 6~10
	
	public PagingDto() {}

	
	public PagingDto(int total, int nowPage, int cntPerPage) {

		setNowPage(nowPage);
		setCntPerPage(cntPerPage);
		setTotal(total);
		

		calcLastPage(getTotal(), getCntPerPage());
		
		calcStartEndPage(getNowPage(), cntPage);
		
		calcStartEnd(getNowPage(), getCntPerPage());
		
		
	}

	
	// 제일 마지막 페이지 계산      ex) 10개 있는데 한 페이지에 5개씩이면 마지막페이지는 2
	public void calcLastPage(int total, int cntPerPage) {
		setLastPage((int) Math.ceil((double) total / (double) cntPerPage));
	}

	
	
	
	// 시작, 끝 페이지 계산
	public void calcStartEndPage(int nowPage, int cntPage) {
		
		//끝페이지
		setEndPage(((int) Math.ceil((double) nowPage / (double) cntPage)) * cntPage);
		
		
		if (getLastPage() < getEndPage()) {
			setEndPage(getLastPage());
		}
		
		
		//end 끝, last 마지막
		
		
		//시작페이지
		setStartPage(getEndPage() - cntPage + 1);
		
		
		if (getStartPage() < 1) {
			setStartPage(1);
		}
		
		
	}
	
	
	
	// DB 쿼리에서 사용할 start, end값 계산
		public void calcStartEnd(int nowPage, int cntPerPage) {
			
			setEnd(nowPage * cntPerPage);
			
			setStart(getEnd() - cntPerPage + 1);
			
		}
	
	
		
	
	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getCntPerPage() {
		return cntPerPage;
	}

	public void setCntPerPage(int cntPerPage) {
		this.cntPerPage = cntPerPage;
	}

	public int getLastPage() {
		return lastPage;
	}

	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}

	
	public int getCntPage() {
		return cntPage;
	}


	public void setCntPage(int cntPage) {
		this.cntPage = cntPage;
	}
	
	

	public int getStart() {
		return start;
	}


	public void setStart(int start) {
		this.start = start;
	}


	public int getEnd() {
		return end;
	}


	public void setEnd(int end) {
		this.end = end;
	}


	@Override
	public String toString() {
		return "PagingDto [nowPage=" + nowPage + ", startPage=" + startPage + ", endPage=" + endPage + ", total="
				+ total + ", cntPerPage=" + cntPerPage + ", lastPage=" + lastPage + ", cntPage=" + cntPage + "]";
	}

}
