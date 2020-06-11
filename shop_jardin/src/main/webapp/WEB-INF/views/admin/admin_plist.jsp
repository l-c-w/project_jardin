<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/admin_notice.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
<link rel="stylesheet" href="../css/admin_account.css">
<script type="text/javascript" src="../js/admin_Leftmenu.js"></script>
</head>
<body>
<!-- 리스트 붙여넣기 -->
	<jsp:include page="admin_header.jsp"/>
	<!------------------------------------------------------------------------------------------------------------------------------->
	<section>
				<p>상품관리</p>
	<div class="notice_conts" id="noticeContent">
				
				
				<div class="searching">
				<form action="" name="" method="post">
				<select name="">
					<option value="all">전체</option>
					<option value="title">상품코드</option>
					<option value="content">상품명</option>
					<option value="category">분류</option>
					<option value="category">메인노출</option>
					<option value="category">이벤트 적용</option>
				</select>
				<select name="">
					<option value="all">전체</option>
					<option value="">분류1</option>
					<option value="">분류2</option>
					<option value="">분류3</option>
					<option value="">분류4</option>
					<option value="">분류5</option>
				</select>
				<input type="text" name="" >
				<input type="submit" value="검색">
				</form>
				</div>
				
				
				
				<div class="tb_row">
					<table id="notice_list">
						<colgroup>
							<col width="10%">
							<col width="15%">
							<col width="45%">
							<col width="10%">
							<col width="10%">
							<col width="10%">
						</colgroup>
						<thead>
							<tr>
								<th>상품코드</th>
								<th>분류</th>
								<th>상품명</th>
								<th>재고</th>
								<th>이벤트</th>	
								<th>등록일</th>
							</tr>
						</thead>
						<tr class="notice_tr" onclick="">
							<td>p1001</td>						
							<td>원두</td>
							<td>조지아산 원두</td>
							<td>97</td>
							<td>없음</td>
							<td>2020/05/27</td>
						</tr>
					</table>
				</div>
				<div id="write_notice">
					<button type="button" onclick="">상품등록</button>
				</div>
				
				<div class="pagination" id="pagination">
				
				
				</div>
				
			</div>
			</section>
</body>
</html>