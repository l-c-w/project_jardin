<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/admin_pview.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
<link rel="stylesheet" href="../css/admin_account.css">
<script type="text/javascript" src="../js/admin_Leftmenu.js"></script>
</head>
<body>
<!-- 리스트 붙여넣기 -->
	<jsp:include page="admin_header.jsp"/>
	<!----------------------------------------------------------------------------------------------------------------------------- -->
	<section>
		<div id="pview">
		<table id="pview_table">
			<tr class="p_basic_info">
				<th>상품명</th>
				<td>조지아 원두</td>
				<th>메인노출</th>
				<td>N</td>
				
			</tr>
			<tr class="p_basic_info">
				<th>상품코드</th>
				<td>p1001</td>
				<th>이벤트 적용</th>
				<td>N</td>
			</tr>
			
			<tr class="p_basic_info">
				<th>분류</th>
				<td>원두</td>
				<th>상품유형</th>
				<td>신상품</td>
			</tr>
			
			<tr class="p_basic_info">
				<th>등록일</th>
				<td>2020/06/01</td>
				<th>수정일</th>
				<td>-</td>
			</tr>
			
			<tr>
				<td colspan="4" id="p_space"></td>
			</tr>
			
			
			<tr class="p_price">
				<th>단가</th>
				<td>10,000원</td>
				<th>최종표시가격</th>
				<td>10,000원</td>
			</tr>
			
			<tr class="p_price">
				<th>배송비</th>
				<td>2,500원</td>
				<th>배송비 면제</th>
				<td>20,000원</td>
			</tr>
			
			<tr>
				<td colspan="4" id="p_space"></td>
			
			<tr class="p_basic_info">
				<th>칼로리</th>
				<td>10cal</td>
				<th>용량</th>
				<td>150g</td>
			</tr>
			
			<tr class="p_name">
				<th>재고</th>
				<td colspan="3">156</td>
			</tr>
			
			<tr>
				<td colspan="4" id="p_space"></td>
				
			<tr class="p_file">
				<th>썸네일</th>
				<td colspan="3">p_file1.jpg</td>
			</tr>
			<tr class="p_file">
				<th>그림파일1</th>
				<td colspan="3">p_file2.jpg</td>
			</tr>
			<tr class="p_file">
				<th>그림파일2</th>
				<td colspan="3">p_file3.jpg</td>
			</tr>
			<tr class="p_file">
				<th>그림파일3</th>
				<td colspan="3">p_file4.jpg</td>
			</tr>
			<tr class="p_file">
				<th>그림파일4</th>
				<td colspan="3">p_file5.jpg</td>
			</tr>
			
			<tr class="p_file">
				<th>그림파일5</th>
				<td colspan="3">p_file6.jpg</td>
			</tr>
			
		</table>
			<div id="nivew_btn">
			<button type="button" onclick="">목록</button>
			<button type="button" onclick="">수정</button>
			<button type="button" onclick="">삭제</button>
			<button type="button" onclick="">메인등록</button>
			</div>
		</div>
		</section>
</body>
</html>